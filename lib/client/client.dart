import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:isolate';

import 'package:shatl_mod_loader/proto/packet.pb.dart';

class TcpClient {
  Socket? _socket;

  final BytesBuilder _buffer = BytesBuilder();
  StreamSubscription<Uint8List>? _subscription;
  final List<void Function()> onDisconnects = [];

  int _seq = 0;

  final Map<int, Completer<packet>> _futures = {};

  bool get connected => _socket != null;

  int _nextSeq() {
    if (_seq >= 0x7fffffff) {
      _seq = 1;
    } else {
      ++_seq;
    }

    return _seq;
  }

  Future<void> connect(String host, int port) async {
    _socket = await Socket.connect(host, port);

    print('connected: ${_socket!.remoteAddress.address}:$port');

    _subscription = _socket!.listen(
      _onData,
      onError: (Object error) {
        print('socket error: $error');
        _handleDisconnect(error);
      },
      onDone: () {
        print('server disconnected');
        _handleDisconnect(StateError('server disconnected'));
      },
      cancelOnError: false,
    );
  }

  void _onData(Uint8List data) {
    print("接收消息");
    _buffer.add(data);

    while (true) {
      final bytes = _buffer.toBytes();

      if (bytes.length < 4) {
        return;
      }

      final view = ByteData.sublistView(bytes);

      final length = view.getUint32(0, Endian.big);
      print(length);

      if (bytes.length < 4 + length) {
        return;
      }

      final packet = Uint8List.fromList(bytes.sublist(4, 4 + length));

      _buffer.clear();

      if (bytes.length > 4 + length) {
        _buffer.add(bytes.sublist(4 + length));
      }

      _onPacket(packet);
    }
  }

  void _onPacket(Uint8List data) {
    print('received packet: ${data.length} bytes');

    final message = packet.fromBuffer(data);

    print('received cmd=${message.cmd} seq=${message.seq}');

    final seq = message.seq;

    final completer = _futures.remove(seq);

    if (completer != null) {
      completer.complete(message);
    }

    if (message.cmd == pk_cmd.cmd_confirm) {}
  }

  void send(Uint8List data) {
    final socket = _socket;

    if (socket == null) {
      throw StateError('not connected');
    }

    final header = ByteData(4);

    header.setUint32(0, data.length, Endian.big);

    socket.add(header.buffer.asUint8List());

    socket.add(data);
  }

  Future<packet> sendPacket(packet request) {
    if (!connected) {
      return Future.error(StateError('not connected'));
    }

    final seq = _nextSeq();

    request.seq = seq;

    final completer = Completer<packet>();

    _futures[seq] = completer;

    try {
      send(request.writeToBuffer());
    } catch (e, st) {
      _futures.remove(seq);
      completer.completeError(e, st);
    }

    return completer.future;
  }

  void _handleDisconnect(Object error) {
    _socket = null;

    for (final completer in _futures.values) {
      if (!completer.isCompleted) {
        completer.completeError(error);
      }
    }

    _futures.clear();
    for (var e in onDisconnects) {
      e();
    }
  }

  Future<void> close() async {
    await _subscription?.cancel();
    _subscription = null;

    await _socket?.close();
    _socket = null;

    _buffer.clear();

    final error = StateError('socket closed');

    for (final completer in _futures.values) {
      if (!completer.isCompleted) {
        completer.completeError(error);
      }
    }

    _futures.clear();
  }
}

class TcpManager {
  static const String portName = 'shatl_tcp_manager';

  static Isolate? _isolate;

  static Future<void> start() async {
    if (IsolateNameServer.lookupPortByName(portName) != null) {
      return;
    }

    final ready = ReceivePort();

    _isolate = await Isolate.spawn(_entry, ready.sendPort);

    await ready.first;
    ready.close();
  }

  static void _entry(SendPort mainPort) {
    final receivePort = ReceivePort();

    IsolateNameServer.removePortNameMapping(portName);
    IsolateNameServer.registerPortWithName(receivePort.sendPort, portName);

    mainPort.send(true);

    final client = TcpClient();

    receivePort.listen((message) async {
      if (message is! List) {
        return;
      }

      final type = message[0];

      if (type == 'connect') {
        final host = message[1] as String;
        final port = message[2] as int;

        try {
          await client.connect(host, port);

          final replyPort = message[3] as SendPort;

          replyPort.send({'type': 'connect_result', 'success': true});
        } catch (e) {
          final replyPort = message[3] as SendPort;

          replyPort.send({
            'type': 'connect_result',
            'success': false,
            'error': e.toString(),
          });
        }
      }
      if (type == 'send') {
        final data = message[1] as Uint8List;
        final replyPort = message[2] as SendPort;

        try {
          final request = packet.fromBuffer(data);

          final response = await client.sendPacket(request);

          replyPort.send(response.writeToBuffer());
        } catch (e) {
          replyPort.send({'success': false, 'error': e.toString()});
        }
      }
    });
  }

  static Future<Uint8List> sendPacket(Uint8List data) async {
    final port = IsolateNameServer.lookupPortByName(portName);

    if (port == null) {
      throw StateError('TcpManager not running');
    }

    final reply = ReceivePort();

    port.send(['send', data, reply.sendPort]);

    final result = await reply.first;

    reply.close();

    if (result is Map && result['success'] == false) {
      throw StateError(result['error']);
    }

    return result as Uint8List;
  }

  static Future<packet> sendPacketAndParse(packet packMsg) async {
    final requestData = packMsg.writeToBuffer();
    final responseData = await TcpManager.sendPacket(requestData);
    final resMsg = packet.fromBuffer(responseData);

    return resMsg;
  }

  static Future<confirm?> sendPacketConfirm(packet packMsg) async {
    final resMsg = await sendPacketAndParse(packMsg);

    if (resMsg.cmd == pk_cmd.cmd_confirm) {
      final confirmMsg = confirm.fromBuffer(resMsg.data);
      return confirmMsg;
    }

    return null;
  }

  static Future<T> sendPacketT<T>(
    packet packetMsg,
    T Function(List<int>) fromBuffer,
  ) async {
    final res = await sendPacketConfirm(packetMsg);
    return fromBuffer(res!.data);
  }

  static SendPort? get port {
    return IsolateNameServer.lookupPortByName(portName);
  }

  static void stop() {
    IsolateNameServer.removePortNameMapping(portName);
    _isolate?.kill(priority: Isolate.immediate);
    _isolate = null;
  }
}

import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/widget/title_switch.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/setting.pb.dart';

class NetPacketBool extends StatefulWidget {
  const NetPacketBool({super.key, required this.title, required this.type});

  final String title;
  final bool_value_type type;

  @override
  State<NetPacketBool> createState() => _NetPacketBoolState();
}

class _NetPacketBoolState extends State<NetPacketBool> {
  static final Map<String, bool> mapIsOpenCache = {};
  late bool _isOpen;

  @override
  void initState() {
    super.initState();

    _isOpen = mapIsOpenCache[_shardTypeString("bool")] ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TitleSwitch(
      title: widget.title,
      value: _isOpen,
      onChanged: (value) async {
        final ok = await _sendPacket(value);
        if (ok) {
          setState(() {
            _isOpen = value;
            mapIsOpenCache[_shardTypeString("bool")] = value;
          });
        }
      },
    );
  }

  Future<bool> _sendPacket(bool isOpen) async {
    final packMsg = packet(
      cmd: pk_cmd.cmd_player_bool_value,
      data: REQbool_value(type: widget.type, isOpen: isOpen).writeToBuffer(),
    );
    final msg = await TcpManager.sendPacketConfirm(packMsg);

    return msg?.ok ?? false;
  }

  String _shardTypeString(String str) =>
      widget.title + widget.type.toString() + str;
}

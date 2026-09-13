import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/window_manager.dart';

class ClosedOverlay extends StatefulWidget {
  const ClosedOverlay({super.key});

  @override
  State<ClosedOverlay> createState() => _ClosedOverlayState();
}

class _ClosedOverlayState extends State<ClosedOverlay> {
  late SendPort? _port;
  late Future _connect;
  late ReceivePort _reply;

  @override
  void initState() {
    super.initState();
    _reply = ReceivePort();
    _connectServer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: FutureBuilder(
        future: _connect,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError ||
                (snapshot.data as Map<String, dynamic>?)?["success"] as bool ==
                    false) {
              Future.delayed(Duration(milliseconds: 500)).then((_) {
                setState(() {
                  _connectServer();
                });
              });

              return Center(child: Text("连接中..."));
            }

            return _buildWidget();
          }

          return const Center(child: Text("连接中..."));
        },
      ),
    );
  }

  Widget _buildWidget() {
    return TextButton(
      onPressed: () async {
        final windows = await WindowManager.getWindows();
        if (windows["opend_window"] != null) {
          windows["opend_window"]?.show();
          windows["closed_window"]?.hide();
        }
      },
      child: Text("click"),
    );
  }

  void _connectServer() {
    _port = IsolateNameServer.lookupPortByName('shatl_tcp_manager');
    _port?.send(['connect', '127.0.0.1', 39520, _reply.sendPort]);
    _connect = _reply.first;
  }
}

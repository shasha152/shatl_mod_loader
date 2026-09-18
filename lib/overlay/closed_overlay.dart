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
  SendPort? _port;

  late Future<Map<String, dynamic>> _connect;

  @override
  void initState() {
    super.initState();
    _connect = _connectServer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: FutureBuilder<Map<String, dynamic>>(
        future: _connect,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text("连接中..."));
          }

          if (snapshot.hasError || snapshot.data?["success"] == false) {
            return Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _connect = _connectServer();
                  });
                },
                child: const Text("重新连接"),
              ),
            );
          }

          return _buildWidget();
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
      child: const Text("click"),
    );
  }

  Future<Map<String, dynamic>> _connectServer() async {
    _port = IsolateNameServer.lookupPortByName('shatl_tcp_manager');

    if (_port == null) {
      return {"success": false, "message": "找不到 TCP Manager"};
    }

    final reply = ReceivePort();

    _port!.send(['connect', '127.0.0.1', 39520, reply.sendPort]);

    try {
      final result = await reply.first;

      return Map<String, dynamic>.from(result as Map);
    } finally {
      reply.close();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/packet.pbenum.dart';

class NetPacketButton extends StatelessWidget {
  const NetPacketButton({
    super.key,
    required this.cmd,
    required this.name,
    required this.title,
  });

  final pk_cmd cmd;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(child: Text(title, style: const TextStyle(fontSize: 16))),

          TextButton(
            onPressed: () async {
              await TcpManager.sendPacketConfirm(packet(cmd: cmd));
            },
            child: Text(name),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/widget/net_packet_max_value.dart';
import 'package:shatl_mod_loader/proto/player.pb.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  static const widgets = [
    NetPacketMaxValue(min: 0, max: 500, title: "血量", type: max_value_type.life),
    NetPacketMaxValue(min: 0, max: 400, title: "蓝量", type: max_value_type.mana),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (context, index) {
        return widgets[index];
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/widget/net_packet_bool.dart';
import 'package:shatl_mod_loader/proto/setting.pbenum.dart';

class WorldPage extends StatelessWidget {
  const WorldPage({super.key});
  static const widgets = [
    NetPacketBool(title: "全图高亮", type: bool_value_type.light_color),
    NetPacketBool(title: "双击地图传送", type: bool_value_type.double_click_teleport),
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

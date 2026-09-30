import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/widget/custom_slider.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/setting.pb.dart';
import 'package:shatl_mod_loader/proto/setting.pbenum.dart';
import 'package:shatl_mod_loader/widget/title_switch_expand.dart';

class NetPlayerFly extends StatefulWidget {
  const NetPlayerFly({super.key});

  @override
  State<NetPlayerFly> createState() => _NetPlayerFlyState();
}

class _NetPlayerFlyState extends State<NetPlayerFly> {
  static bool _isOpen = false;
  static bool _type = false;
  static double _speed = 1;

  @override
  void setState(VoidCallback fn) async {
    super.setState(fn);
    final reqMsg = _type
        ? packet(
            cmd: pk_cmd.cmd_player_float_value,
            data: REQfloat_value(
              isOpen: true && _isOpen,
              type: float_value_type.cursor_fly,
              value: _speed,
            ).writeToBuffer(),
          )
        : packet(
            cmd: pk_cmd.cmd_player_float_value,
            data: REQfloat_value(
              isOpen: true && _isOpen,
              type: float_value_type.control_fly,
              value: _speed,
            ).writeToBuffer(),
          );
    final reqMsg2 = _type
        ? packet(
            cmd: pk_cmd.cmd_player_float_value,
            data: REQfloat_value(
              isOpen: false,
              type: float_value_type.control_fly,
              value: _speed,
            ).writeToBuffer(),
          )
        : packet(
            cmd: pk_cmd.cmd_player_float_value,
            data: REQfloat_value(
              isOpen: false,
              type: float_value_type.cursor_fly,
              value: _speed,
            ).writeToBuffer(),
          );
    final resMsg = await TcpManager.sendPacketConfirm(reqMsg);
    final resMsg2 = await TcpManager.sendPacketConfirm(reqMsg2);
    if (resMsg?.ok ?? false || resMsg2!.ok) {
      print("移速修改完成");
    }
  }

  @override
  Widget build(BuildContext context) {
    return TitleSwitchExpand(
      title: "飞行",
      content: Column(
        spacing: 10,
        children: [
          RadioGroup<bool>(
            groupValue: _type,
            onChanged: (value) {
              setState(() {
                _type = value!;
              });
            },
            child: const Column(
              children: [
                RadioListTile<bool>(value: false, title: Text('跟随控制轮盘')),
                RadioListTile<bool>(value: true, title: Text('跟随光标')),
              ],
            ),
          ),
          CustomSlider(
            min: 1,
            max: 100,
            title: "速度",
            onChangeEnd: (value) {
              setState(() {
                _speed = value;
              });
            },
          ),
        ],
      ),
      onChanged: (value) {
        setState(() {
          _isOpen = value;
        });
      },
      value: _isOpen,
    );
  }
}

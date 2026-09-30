import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/proto/multi_player.pb.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/widget/custom_check_box.dart';
import 'package:shatl_mod_loader/widget/title_switch.dart';
import 'package:shatl_mod_loader/widget/title_switch_expand.dart';

class AutoAimSwitchExpand extends StatefulWidget {
  const AutoAimSwitchExpand({super.key});

  @override
  State<AutoAimSwitchExpand> createState() => _AutoAimSwitchExpandState();
}

class _AutoAimSwitchExpandState extends State<AutoAimSwitchExpand> {
  static bool _isOpen = false;
  static bool _isAimPlayer = false;
  static bool _isAimNPC = false;
  static bool _isAutoAim = true;
  static bool _isAttackFriendly = false;

  @override
  void setState(VoidCallback fn) async {
    fn();
    final confirm = await TcpManager.sendPacketConfirm(
      packet(
        cmd: pk_cmd.cmd_auto_aim,
        data: REQauto_aim(
          isOpen: _isOpen,
          npc: _isAimNPC,
          player: _isAimPlayer,
          autoUseAim: _isAutoAim,
          isAttackFriendly: _isAttackFriendly,
        ).writeToBuffer(),
      ),
    );

    if (mounted && confirm != null && confirm.ok) {
      super.setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return TitleSwitchExpand(
      title: "自瞄",
      content: Column(
        children: [
          const Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text("自瞄目标", style: TextStyle(fontSize: 13)),
          ),
          const SizedBox(height: 4),
          Row(
            spacing: 10,
            children: [
              CustomCheckBox(
                title: "玩家",
                value: _isAimPlayer,
                width: 100,
                color: Colors.blueAccent[200],
                onChanged: (value) {
                  setState(() {
                    _isAimPlayer = value;
                  });
                },
              ),
              CustomCheckBox(
                title: "NPC",
                value: _isAimNPC,
                width: 100,
                color: Colors.cyanAccent[200],
                onChanged: (value) {
                  setState(() {
                    _isAimNPC = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 6),
          Transform.scale(
            scale: 0.9,
            alignment: Alignment.centerLeft,
            child: TitleSwitch(
              title: "手动操作光标停止自瞄",
              value: _isAutoAim,
              onChanged: (value) {
                setState(() {
                  _isAutoAim = value;
                });
              },
            ),
          ),
          Transform.scale(
            scale: 0.9,
            alignment: Alignment.centerLeft,
            child: TitleSwitch(
              title: "攻击友好生物",
              value: _isAttackFriendly,
              onChanged: (value) {
                setState(() {
                  _isAttackFriendly = value;
                });
              },
            ),
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

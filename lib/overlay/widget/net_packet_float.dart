import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/widget/custom_slider.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/setting.pb.dart';
import 'package:shatl_mod_loader/widget/title_switch_expand.dart';

class NetPacketFloat extends StatefulWidget {   
  const NetPacketFloat({
    super.key,
    required this.title,
    required this.type,
    required this.min,
    required this.max,
  });
  final String title;
  final float_value_type type;
  final double min;
  final double max;

  @override
  State<NetPacketFloat> createState() => _NetPacketFloatState();
}

class _NetPacketFloatState extends State<NetPacketFloat> {
  static final Map<String, bool> mapIsOpenCache = {};
  late double _currValue;

  @override
  void initState() {
    super.initState();

    _currValue = widget.min;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _currValue = await _getValue(_shardTypeString("val"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return TitleSwitchExpand(
      title: widget.title,
      content: CustomSlider(
        min: widget.min,
        max: widget.max,
        title: "value",
        onChangeEnd: (value) async {
          if (await _sendPacket(
            mapIsOpenCache[_shardTypeString("open")] ?? false,
            value,
          )) {
            setState(() {
              _currValue = value;
            });
          }
        },
      ),
      onChanged: (value) async {
        if (await _sendPacket(value)) {
          setState(() {
            mapIsOpenCache[_shardTypeString("open")] = value;
          });
        }
      },
      value: mapIsOpenCache[_shardTypeString("open")] ?? false,
    );
  }

  String _shardTypeString(String str) =>
      widget.title.toString() + widget.type.toString() + str;

  Future<double> _getValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? widget.min;
  }

  Future<bool> _sendPacket(bool isOpen, [double? value]) async {
    final packMsg = packet(
      cmd: pk_cmd.cmd_player_float_value,
      data: REQfloat_value(
        type: widget.type,
        isOpen: isOpen,
        value: value ?? _currValue,
      ).writeToBuffer(),
    );
    final msg = await TcpManager.sendPacketConfirm(packMsg);

    return msg?.ok ?? false;
  }
}

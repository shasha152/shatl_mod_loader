import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/widget/custom_slider.dart';
import 'package:shatl_mod_loader/overlay/widget/title_switch_expand.dart';
import 'package:shatl_mod_loader/proto/packet.pb.dart';
import 'package:shatl_mod_loader/proto/player.pb.dart';

class NetPacketMaxValue extends StatefulWidget {
  const NetPacketMaxValue({
    super.key,
    required this.max,
    required this.min,
    required this.title,
    this.formatValue,
    required this.type,
  });

  final double max;
  final double min;
  final String title;
  final double Function(double)? formatValue;
  final max_value_type type;

  @override
  State<NetPacketMaxValue> createState() => _NetPacketMaxValueState();
}

class _NetPacketMaxValueState extends State<NetPacketMaxValue> {
  static final Map<String, bool> mapIsOpenCache = {};
  late double _maxValue;
  late double _currValue;
  late bool _isOpen;

  @override
  void initState() {
    super.initState();

    _maxValue = widget.min;
    _currValue = widget.min;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _maxValue = await _getValue(_shardTypeString("max"));
      _currValue = await _getValue(_shardTypeString("val"));
    });

    _isOpen = mapIsOpenCache[_shardTypeString("bool")] ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TitleSwitchExpand(
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
      title: widget.title,
      content: Column(
        children: [
          CustomSlider(
            min: widget.min,
            max: widget.max,
            title: "max",
            saveKey: _shardTypeString("max"),
            formatValue: widget.formatValue ?? formatInt,
            onChangeEnd: (value) {
              _maxValue = value;
              _sendPacket(_isOpen);
            },
          ),
          CustomSlider(
            min: widget.min,
            max: widget.max,
            title: "val",
            saveKey: _shardTypeString("val"),
            formatValue: widget.formatValue ?? formatInt,
            onChangeEnd: (value) {
              _currValue = value;
              _sendPacket(_isOpen);
            },
          ),
        ],
      ),
    );
  }

  Future<bool> _sendPacket(bool isOpen) async {
    final packMsg = packet(
      cmd: pk_cmd.cmd_player_max_value,
      data: REQplayer_max_value(
        type: widget.type,
        isOpen: isOpen,
        value: _currValue.toInt(),
        max: _maxValue.toInt(),
      ).writeToBuffer(),
    );
    final msg = await TcpManager.sendPacketConfirm(packMsg);

    return msg?.ok ?? false;
  }

  String _shardTypeString(String str) =>
      widget.title.toString() + widget.type.toString() + str;

  Future<double> _getValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? widget.min;
  }
}

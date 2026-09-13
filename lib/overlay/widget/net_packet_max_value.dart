import 'package:flutter/material.dart';
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
  late double _maxValue;
  late double _currValue;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();

    _maxValue = widget.min;
    _currValue = widget.min;
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
      data: player_max_value(
        type: widget.type,
        isOpen: isOpen,
        value: _currValue.toInt(),
        max: _maxValue.toInt(),
      ).writeToBuffer(),
    );

    final requestData = packMsg.writeToBuffer();
    final responseData = await TcpManager.sendPacket(requestData);
    final resMsg = packet.fromBuffer(responseData);

    bool ok = false;

    if (resMsg.cmd == pk_cmd.cmd_confirm) {
      final confirmMsg = confirm.fromBuffer(resMsg.data);
      ok = confirmMsg.ok;
    }

    return ok;
  }

  String _shardTypeString(String str) =>
      widget.title.toString() + widget.type.toString() + str;
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

double formatInt(double value) {
  return value.toInt().toDouble();
}

double formatDouble(double value) {
  return double.parse(value.toStringAsFixed(1));
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.min,
    required this.max,
    this.defaultValue = 0,
    this.formatValue = formatInt,
    required this.title,
    required this.onChangeEnd,
    this.saveKey,
  });

  final double min;
  final double max;
  final double defaultValue;
  final String title;
  final String? saveKey;

  final double Function(double) formatValue;
  final void Function(double) onChangeEnd;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double currValue;

  @override
  void initState() {
    super.initState();

    currValue = widget.min;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (widget.saveKey != null) {
        final prefs = await SharedPreferences.getInstance();
        setState(() {
          currValue = widget.formatValue(
            prefs.getDouble(widget.saveKey!) ?? widget.min,
          );
          widget.onChangeEnd(currValue);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.title),
        const SizedBox(width: 10),
        Expanded(
          child: Slider(
            min: widget.min,
            max: widget.max,
            value: currValue,
            onChanged: (value) {
              setState(() {
                currValue = widget.formatValue(value);
              });
            },
            onChangeEnd: (value) async {
              value = widget.formatValue(value);
              if (widget.saveKey != null) {
                final prefs = await SharedPreferences.getInstance();
                prefs.setDouble(widget.saveKey!, value);
              }
              widget.onChangeEnd(value);
            },
          ),
        ),
        Text(currValue.toString()),
      ],
    );
  }
}

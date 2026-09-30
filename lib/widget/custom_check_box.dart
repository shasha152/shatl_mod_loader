import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    this.width,
    this.height,
    this.color,
    this.textStyle,
  });

  final bool value;
  final void Function(bool) onChanged;
  final String? title;
  final double? width;
  final double? height;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: value ? (color ?? Colors.amberAccent) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: value
              ? BoxBorder.all(
                  color: Theme.of(context).primaryColor.withAlpha(100),
                  width: 0.5,
                )
              : BoxBorder.all(color: Colors.grey, width: 0.5),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style:
                textStyle ??
                TextStyle(fontSize: 12, color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TitleSwitch extends StatelessWidget {
  const TitleSwitch({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(child: Text(title, style: const TextStyle(fontSize: 16))),

          Switch.adaptive(value: value, onChanged: onChanged),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

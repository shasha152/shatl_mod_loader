import 'package:flutter/material.dart';

class TitleSwitchExpand extends StatefulWidget {
  const TitleSwitchExpand({
    super.key,
    required this.title,
    required this.content,
    required this.onChanged,
    required this.value,
  });

  final String title;
  final Widget content;
  final bool value;
  final void Function(bool) onChanged;

  @override
  State<TitleSwitchExpand> createState() => _TitleSwitchExpandState();
}

class _TitleSwitchExpandState extends State<TitleSwitchExpand> {
  // bool enabled = false;
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              expanded = !expanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),

                Switch.adaptive(
                  value: widget.value,
                  onChanged: widget.onChanged,
                ),
                const SizedBox(width: 10),
                AnimatedRotation(
                  turns: expanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ),
        ),

        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: expanded
              ? Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      const SizedBox(height: 8),
                      widget.content,
                      const SizedBox(height: 12),
                      Text(
                        widget.value ? "功能已开启" : "功能已关闭",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

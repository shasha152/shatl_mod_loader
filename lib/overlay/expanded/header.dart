import 'package:flutter/material.dart';

class ExpandedHeader extends StatefulWidget {
  const ExpandedHeader({super.key, required this.onBackTap});

  final void Function() onBackTap;

  @override
  State<ExpandedHeader> createState() => _ExpandedHeaderState();
}

class _ExpandedHeaderState extends State<ExpandedHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        PopupMenuButton<String>(
          icon: const Text(
            '?',
            style: TextStyle(fontSize: 18, fontWeight: .w400),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onSelected: (value) {
            switch (value) {
              case 'about':
                showAboutDialog(
                  context: context,
                  applicationIcon: Image.asset(
                    "images/icons/app_icon.png",
                    width: 100,
                    height: 100,
                  ),
                  applicationName: "Shatl Mod Loader",
                  applicationVersion: "V1.0.0",
                );
                break;
            }
          },
          itemBuilder: (context) => const [
            PopupMenuItem(value: 'about', child: Text('关于')),
          ],
        ),
        IconButton(onPressed: widget.onBackTap, icon: Icon(Icons.close)),
      ],
    );
  }
}

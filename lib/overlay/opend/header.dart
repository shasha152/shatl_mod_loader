import 'package:flutter/material.dart';

class OpendHeader extends StatefulWidget {
  const OpendHeader({super.key, required this.onBackTap});

  final void Function() onBackTap;

  @override
  State<OpendHeader> createState() => _OpendHeaderState();
}

class _OpendHeaderState extends State<OpendHeader> {
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
                showAboutDialog(context: context);
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

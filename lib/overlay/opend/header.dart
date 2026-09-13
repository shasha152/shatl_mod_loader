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

        IconButton(onPressed: widget.onBackTap, icon: Icon(Icons.close)),
      ],
    );
  }
}

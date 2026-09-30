import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/widget/auto_aim_switch_expand.dart';

class MultiPlayerPage extends StatelessWidget {
  const MultiPlayerPage({super.key});

  static const List<Widget> widgets = [AutoAimSwitchExpand()];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (context, index) {
        return widgets[index];
      },
    );
  }
}

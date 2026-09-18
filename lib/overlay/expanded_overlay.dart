import 'package:flutter/material.dart';
import 'package:flutter_floatwing/flutter_floatwing.dart';
import 'package:shatl_mod_loader/overlay/expanded/header.dart';
import 'package:shatl_mod_loader/overlay/expanded/sider.dart';
import 'package:shatl_mod_loader/overlay/expanded/sider_item.dart';
import 'package:shatl_mod_loader/overlay/page/bag.dart';
import 'package:shatl_mod_loader/overlay/page/player.dart';
import 'package:shatl_mod_loader/overlay/page/world.dart';
import 'package:shatl_mod_loader/overlay/window_manager.dart';

class ExpandedOverlay extends StatefulWidget {
  const ExpandedOverlay({super.key});

  @override
  State<ExpandedOverlay> createState() => _ExpandedOverlayState();
}

class _ExpandedOverlayState extends State<ExpandedOverlay> {
  static const pages = [PlayerPage(), WorldPage(), PlayerBagPage()];

  int currPageIndex = 0;
  late Window? w;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          ExpandedSider(
            onChanged: (index) {
              setState(() {
                currPageIndex = index;
              });
            },
            items: [
              _buildSiderItem("images/icons/player.png"),
              _buildSiderItem("images/icons/world.png"),
              _buildSiderItem("images/icons/bag.png"),
            ],
          ),
          VerticalDivider(width: 1),
          Expanded(
            child: Column(
              children: [
                ExpandedHeader(
                  onBackTap: () async {
                    final windows = await WindowManager.getWindows();

                    windows["closed_window"]?.show();
                    windows["opend_window"]?.hide();
                  },
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: pages[currPageIndex],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ExpandedSiderItem _buildSiderItem(String asset) {
    return ExpandedSiderItem(
      child: Image.asset(asset, width: 30, height: 30, color: Colors.green),
    );
  }
}

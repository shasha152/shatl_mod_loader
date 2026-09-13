import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/opend/sider_item.dart';

class OpendSider extends StatefulWidget {
  const OpendSider({super.key, required this.items, required this.onChanged});

  final List<OpendSiderItem> items;
  final void Function(int) onChanged;

  @override
  State<OpendSider> createState() => _OpendSiderState();
}

class _OpendSiderState extends State<OpendSider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox.square(
            dimension: 90,
            child: Align(
              alignment: AlignmentGeometry.center,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(50),
                child: Image.asset(
                  "images/author.jpg",
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 90,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      widget.onChanged(index);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: widget.items[index].child,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

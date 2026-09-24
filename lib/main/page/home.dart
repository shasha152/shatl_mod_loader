import 'package:flutter/material.dart';
import 'package:shatl_mod_loader/overlay/window_manager.dart';
import 'package:shatl_mod_loader/platform/screen_info.dart';

class _IntegerSize {
  _IntegerSize(this.width, this.height);

  final int width;
  final int height;
}

void _showOverlay(_IntegerSize size) {
  WindowManager.createWindow(
    route: "overlay.closed",
    id: "closed_window",
    width: 450,
    height: 100,
    y: 70,
    draggable: false,
  );
  WindowManager.createWindow(
    route: "overlay.opened",
    id: "opend_window",
    width: (size.height / 1.5).toInt(),
    height: size.width - 20,
    isShow: false,
    y: 50,
    draggable: false,
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<ScreenInfo> screenInfo;

  @override
  void initState() {
    super.initState();
    WindowManager.initPlugin();
    screenInfo = ScreenInfoProvider.getAndroidScreenInfo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: screenInfo,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Center();

        var size = _IntegerSize(
          snapshot.data!.availableWidth,
          snapshot.data!.availableHeight,
        );
        if (size.width > size.height) {
          size = _IntegerSize(size.height, size.width);
        }
        return Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 0),
            onPressed: () {
              _showOverlay(size);
            },
            child: Text("启动悬浮窗"),
          ),
        );
      },
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_floatwing/flutter_floatwing.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/overlay/closed_overlay.dart';
import 'package:shatl_mod_loader/overlay/opend_overlay.dart';
import 'package:shatl_mod_loader/overlay/window_manager.dart';
import 'package:shatl_mod_loader/platform/screen_info.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TcpManager.start();

  runApp(const MyApp());
}

void showOverlay(InterSize size) {
  WindowManager.createWindow(
    route: "overlay.closed",
    id: "closed_window",
    width: 600,
    height: 100,
    // x: (size.width / 2).toInt() - 300,
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class InterSize {
  InterSize(this.width, this.height);

  final int width;
  final int height;
}

class _MyAppState extends State<MyApp> {
  late Future<ScreenInfo> screenInfo;

  @override
  void initState() {
    super.initState();
    WindowManager.initPlugin();
    screenInfo = ScreenInfoProvider.getAndroidScreenInfo();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "overlay.closed": (context) => ClosedOverlay().floatwing(),
        "overlay.opened": (context) => OpendOverlay().floatwing(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: screenInfo,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Center();

            return OrientationBuilder(
              builder: (context, orientation) {
                var size = InterSize(
                  snapshot.data!.availableWidth,
                  snapshot.data!.availableHeight,
                );
                if (size.width > size.height) {
                  size = InterSize(size.height, size.width);
                }

                // _updateWindowsConfig(size);
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showOverlay(size);
                    },
                    child: Text("启动悬浮窗"),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter_floatwing/flutter_floatwing.dart';

class WindowManager {
  static var mapWindows = <String, Window?>{};
  static final floatwing = FloatwingPlugin();

  static Future<Window?> createWindow({
    String id = "default",
    String? route,
    int? width,
    int? height,
    int? x,
    int? y,
    bool isShow = true,
    bool draggable = true,
  }) async {
    final isServiceRunning = await floatwing.isServiceRunning();
    if (!isServiceRunning) {
      await floatwing.startService();
    }
    final window = await WindowConfig(
      route: route,
      id: id,
      width: width,
      height: height,
      x: x,
      y: y,
      autosize: false,
      draggable: draggable,
      focusable: true,
      gravity: GravityType.CenterTop,
    ).to().create(start: true);
    mapWindows[id] = window;

    if (!isShow) await window?.hide();

    return window;
  }

  static Future<bool> initPlugin() async {
    final granted = await floatwing.checkPermission();
    if (!granted) {
      await floatwing.openPermissionSetting();
    }
    await floatwing.initialize();

    return await floatwing.startService();
  }

  static Future updateConfig({
    String id = "default",
    WindowConfig? config,
  }) async {
    await getWindows();
    final window = mapWindows[id];
    if (window == null) return;

    final currentConfig = window.config!;
    if (config?.x != null) currentConfig.x = config?.x;
    if (config?.y != null) currentConfig.y = config?.y;

    if (config?.width != null) currentConfig.width = config?.width;
    if (config?.height != null) currentConfig.height = config?.height;

    await window.update(currentConfig);
  }

  static Future<Map<String, Window?>> getWindows() async {
    if (mapWindows.isEmpty) {
      await floatwing.syncWindows();
      mapWindows.addAll(floatwing.windows);
    }

    return mapWindows;
  }
}

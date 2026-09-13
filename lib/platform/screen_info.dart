import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenInfo {
  final int physicalWidth;
  final int physicalHeight;

  final double density;

  final int statusBarHeight;
  final int navigationBarHeight;

  final int availableWidth;
  final int availableHeight;

  const ScreenInfo({
    required this.physicalWidth,
    required this.physicalHeight,
    required this.density,
    required this.statusBarHeight,
    required this.navigationBarHeight,
    required this.availableWidth,
    required this.availableHeight,
  });

  @override
  String toString() {
    return '''
ScreenInfo(
  physical: ${physicalWidth} x $physicalHeight,
  density: $density,
  statusBar: $statusBarHeight,
  navigationBar: $navigationBarHeight,
  available: ${availableWidth} x $availableHeight,
)
''';
  }
}

class ScreenInfoProvider {
  static const MethodChannel _channel = MethodChannel(
    'shatl_mod_loader/screen',
  );

  static Future<ScreenInfo> getAndroidScreenInfo() async {
    final result = await _channel.invokeMethod<Map<dynamic, dynamic>>(
      'getScreenInfo',
    );

    if (result == null) {
      throw Exception('Failed to get screen info');
    }

    return ScreenInfo(
      physicalWidth: result['physicalWidth'] as int,
      physicalHeight: result['physicalHeight'] as int,
      density: (result['density'] as num).toDouble(),
      statusBarHeight: result['statusBarHeight'] as int,
      navigationBarHeight: result['navigationBarHeight'] as int,
      availableWidth: result['availableWidth'] as int,
      availableHeight: result['availableHeight'] as int,
    );
  }

  /// Flutter 当前 View 的尺寸
  static ScreenInfo getFlutterScreenInfo(BuildContext context) {
    final view = View.of(context);

    final physicalSize = view.physicalSize;
    final density = view.devicePixelRatio;

    return ScreenInfo(
      physicalWidth: physicalSize.width.toInt(),
      physicalHeight: physicalSize.height.toInt(),
      density: density,
      statusBarHeight: 0,
      navigationBarHeight: 0,
      availableWidth: physicalSize.width.toInt(),
      availableHeight: physicalSize.height.toInt(),
    );
  }
}

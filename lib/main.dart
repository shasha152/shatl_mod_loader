import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_floatwing/flutter_floatwing.dart';
import 'package:shatl_mod_loader/client/client.dart';
import 'package:shatl_mod_loader/main/page/home.dart';
import 'package:shatl_mod_loader/main/page/setting.dart';
import 'package:shatl_mod_loader/overlay/closed_overlay.dart';
import 'package:shatl_mod_loader/overlay/expanded_overlay.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TcpManager.start();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "overlay.closed": (context) => ClosedOverlay().floatwing(),
        "overlay.opened": (context) => ExpandedOverlay().floatwing(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: IndexedStack(
          index: _currentIndex,
          children: [HomePage(), SettingPage()],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: '主页',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: '设置',
            ),
          ],
        ),
      ),
    );
  }
}

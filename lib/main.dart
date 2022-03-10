import 'dart:js';

import 'package:flutter/material.dart';
import 'package:movie_app/get_theme.dart';

import 'screens/navigation screens/navigation_screens.dart';

import 'package:device_preview/device_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: getTheme(),
      home: const NavigationScreens(),
    );
  }
}

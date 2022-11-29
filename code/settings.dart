import 'package:device_preview/device_preview.dart';
// import 'package:flutter_settings_ui/flutter_settings_ui.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../screens/settingsscreen.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Settings UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.deepPurple,
      //     brightness: Brightness.dark,
      //   ).copyWith(secondary: Colors.deepPurple),
      // ),
      home: const SettingsScreen(),
    );
  }
}

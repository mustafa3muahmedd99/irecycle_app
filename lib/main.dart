import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/screens/languages_screen.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      // initialRoute: RoutesName.Home,
      // onGenerateRoute: AppRoute.generate,
      home: LanguagesScreen(
        onLocaleChange: (locale) {
          print("Language changed to: $locale");
        },
      ),
    );
  }
}

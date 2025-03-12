import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/features/auth/forget_password/presentation/screens/forget_password_step1_screen.dart';
import 'package:graduation_project11/features/auth/forget_password/presentation/screens/forget_password_step2_screen.dart';
import 'package:graduation_project11/features/auth/otp/presentation/screens/otp_screen.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:graduation_project11/features/auth/update_password/screens/update_password_screen1.dart';
import 'package:graduation_project11/features/auth/update_password/screens/update_password_screen2.dart';
import 'package:graduation_project11/screens/home_screen.dart';
import 'package:graduation_project11/screens/languages_screen.dart';
import 'package:graduation_project11/screens/splash_screen.dart';

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
      home: HomePage(),
    );
  }
}

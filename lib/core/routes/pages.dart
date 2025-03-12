import 'package:flutter/material.dart';
import 'package:graduation_project11/core/routes/routes_name.dart';
import 'package:graduation_project11/features/balance/presentation/screens/balance_screen.dart';
import 'package:graduation_project11/features/stores/screen/stores_screen.dart';
import 'package:graduation_project11/screens/home_screen.dart';
import 'package:graduation_project11/screens/profile_screen.dart';
import 'package:graduation_project11/screens/splash_screen.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (_) {
            return SplashScreen();
          },
        );
      case RoutesName.Home:
        return MaterialPageRoute(
          builder: (_) {
            return HomePage();
          },
        );
      case RoutesName.Balance:
        return MaterialPageRoute(
          builder: (_) {
            return BalanceScreen();
          },
        );
      case RoutesName.Stores:
        return MaterialPageRoute(
          builder: (_) {
            return StoresScreen();
          },
        );
      case RoutesName.Profile:
        return MaterialPageRoute(
          builder: (_) {
            return ProfileScreen();
          },
        );
      default:
        throw Exception('Route not found!');
    }
  }
}

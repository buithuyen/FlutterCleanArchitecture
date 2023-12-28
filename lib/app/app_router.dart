import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/main/main_page.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/restaurant_list_page.dart';
import 'package:flutter_clean_architecture/presentation/settings/setting_page.dart';

class RoutePaths {
  static const String prefix = 'flutter_demo';
  static const String splash = '/';
  static const String login = '$prefix/login';
  static const String main = '$prefix/main';
  static const String restaurants = '$prefix/restaurants';
  static const String settings = '$prefix/settings';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final path = settings.name;
    // final arguments = settings.arguments;

    switch (path) {
      case RoutePaths.main:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const MainPage(),
        );
      case RoutePaths.restaurants:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const RestaurantListPage(),
        );
      case RoutePaths.settings:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SettingPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(
                'Page not found',
              ),
            ),
          ),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/restaurant_list_page.dart';

class RoutePaths {
  static const String prefix = 'flutter_demo';
  static const String splash = '/';
  static const String login = '$prefix/login';
  static const String home = '$prefix/home';
  static const String restaurants = '$prefix/restaurants';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final path = settings.name;
    // final arguments = settings.arguments;

    switch (path) {
      case RoutePaths.restaurants:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const RestaurantListPage(),
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

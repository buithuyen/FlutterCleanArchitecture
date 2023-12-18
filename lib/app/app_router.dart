import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/home/home_page.dart';
import 'package:flutter_clean_architecture/presentation/login/login_page.dart';
import 'package:flutter_clean_architecture/presentation/splash/splash_page.dart';

class RoutePaths {
  static const String prefix = 'flutter_demo';
  static const String splash = '/';
  static const String login = '$prefix/login';
  static const String home = '$prefix/home';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final path = settings.name;
    // final arguments = settings.arguments;

    switch (path) {
      case RoutePaths.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SplashPage(),
        );
      case RoutePaths.login:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LoginPage(),
        );
      case RoutePaths.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomePage(),
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

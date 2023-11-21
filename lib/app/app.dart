import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/router.dart';
import 'package:flutter_clean_architecture/presentation/counter/counter_page.dart';
import 'package:flutter_clean_architecture/utilities/l10n/l10n.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

mixin RouterObserver {
  static RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
}

class App extends StatefulWidget {
  const App({super.key, this.navigatorKey});
  final GlobalKey<NavigatorState>? navigatorKey;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<App> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      color: Colors.amber,
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        navigatorObservers: [
          RouterObserver.routeObserver,
        ],
        initialRoute: RoutePaths.splash,
        onGenerateRoute: AppRouter.generateRoute,
        navigatorKey: widget.navigatorKey,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const CounterPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app_router.dart';
import 'package:flutter_clean_architecture/app/app_theme.dart';
import 'package:flutter_clean_architecture/utilities/l10n/l10n.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:provider/provider.dart';

mixin RouterObserver {
  static RouteObserver<PageRoute<dynamic>> routeObserver =
      RouteObserver<PageRoute<dynamic>>();
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
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      theme: themeNotifier.getTheme(),
      navigatorObservers: [
        RouterObserver.routeObserver,
      ],
      initialRoute: RoutePaths.main,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: widget.navigatorKey,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SizedBox.shrink(),
    );
  }
}

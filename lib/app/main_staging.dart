import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';
import 'package:flutter_clean_architecture/app/bootstrap.dart';
import 'package:flutter_clean_architecture/utilities/helpers/flavor_getter.dart';
import 'package:flutter_clean_architecture/utilities/injection/injection_container.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    variables: {
      Flavor.baseURLKey: 'https://bety.back4app.io/classes',
      Flavor.parseApplicationIDKey: 'bJ2BytCmA3acg0PhXWHuRZSjlfwKuZHnvSGfysOF',
      Flavor.parseRestAPIKey: 'qnyi0NRg0zEbUcwL4FSYgYeFi8e5wLkwAUxUDUlb',
    },
  );

  await init(di);
  await bootstrap(() => const App());
}

import 'package:flutter_flavor/flutter_flavor.dart';

class Flavor {
  // Flavor._();
  // static final instance = Flavor._();
  static const String baseURLKey = 'baseURL';
  static const String parseApplicationIDKey = 'ParseApplicationID';
  static const String parseRestAPIKey = 'ParseRestAPIKey';

  static String get baseURL =>
      FlavorConfig.instance.variables[baseURLKey] as String;
  static String get parseApplicationID =>
      FlavorConfig.instance.variables[parseApplicationIDKey] as String;
  static String get parseRestAPI =>
      FlavorConfig.instance.variables[parseRestAPIKey] as String;
}

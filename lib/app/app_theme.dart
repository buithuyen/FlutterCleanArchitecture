import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true);
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true);
}

class ThemeNotifier with ChangeNotifier {
  ThemeNotifier(this._themeData);
  ThemeData _themeData;

  ThemeData getTheme() => _themeData;

  Future<void> setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}

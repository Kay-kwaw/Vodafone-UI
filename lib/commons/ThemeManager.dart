import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeData getTheme() {
    return _isDarkMode ? _darkTheme : _lightTheme;
  }

  final ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  final ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.teal,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    backgroundColor: Colors.black
  );
}

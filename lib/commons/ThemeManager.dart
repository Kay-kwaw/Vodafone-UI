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
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      secondary:Color(0xFFF1F4F8),
      
      // secondary: Colors.green,
    
    ),
  );

  final ThemeData _darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      secondary: Color.fromARGB(255, 8, 8, 15)
      
      
      
      // secondary: Colors.blue,
    ),
    brightness: Brightness.dark,
  );
}

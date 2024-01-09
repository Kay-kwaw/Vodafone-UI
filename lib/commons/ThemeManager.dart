import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vodafone/main.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = lightTheme;

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme =
        (_currentTheme == lightTheme) ? darkTheme : lightTheme;
    notifyListeners();
  }
}

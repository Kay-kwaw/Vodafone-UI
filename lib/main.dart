import 'package:flutter/material.dart';
import 'package:vodafone/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // Light theme as a fallback
      darkTheme: ThemeData.dark().copyWith(
        // Customize your dark theme colors here
        primaryColor: Colors.red,
        hintColor: Colors.white,
        // ... other theme properties
      ),
      themeMode: ThemeMode.system, // or ThemeMode.light or ThemeMode.dark
      home: const Homepage(),
    );
  }
}

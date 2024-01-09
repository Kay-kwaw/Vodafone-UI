import 'package:flutter/material.dart';
import 'package:vodafone/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme: ThemeData.light(),
     themeMode: ThemeMode.light,
     darkTheme: ThemeData.dark(),
      home: const Homepage(),
    );
  }
}

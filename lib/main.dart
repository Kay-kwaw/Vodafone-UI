import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vodafone/commons/ThemeManager.dart';
import 'package:vodafone/homepage.dart';
import 'package:vodafone/second_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voda clone',
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      home: const SecondScreen(),
    );
  }
}

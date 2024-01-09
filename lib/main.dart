import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vodafone/commons/ThemeManager.dart';
import 'package:vodafone/homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark/Light Theme Demo',
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      home: Homepage(),
    );
  }
}

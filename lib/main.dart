import 'package:calculator_ui/shered/styles/themes.dart';
import 'package:flutter/material.dart';

import 'layout/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}
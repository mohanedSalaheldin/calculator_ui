// ignore_for_file: prefer_const_constructors

import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

var lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: lightScaffoldColor,
    elevation: 0.0,
  ),
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: lightScaffoldColor,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      overflow: TextOverflow.ellipsis,
      color: Colors.black,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(defaultColor),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          color: defaultColor,
          fontSize: 24,
        ),
      ),
    ),
  ),
);
var darkTheme = ThemeData(
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber,
  ),
  appBarTheme: AppBarTheme(
    color: darkScaffoldColor,
    elevation: 0.0,
  ),
  fontFamily: 'Poppins',
  scaffoldBackgroundColor: darkScaffoldColor,
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      overflow: TextOverflow.ellipsis,
      color: Colors.white,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
    ),
  ),
);

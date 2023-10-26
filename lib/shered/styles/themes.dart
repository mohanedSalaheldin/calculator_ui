// ignore_for_file: prefer_const_constructors

import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:hexcolor/hexcolor.dart';

var lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    primary: HexColor('#ebe4d1'), //top container background 1
    onPrimary: HexColor('#242424'), //main bottom text color 2
    secondary: HexColor('#d2cbb8'), //bottom container background 2
    onSecondary: HexColor('#e2e2e2'), //bottom container text 2
    seedColor: HexColor('#e2e2e2'), //main bottons colors

    tertiary: HexColor('#d2d2d2'), //oparions bottons colors
    error: HexColor('#e45604'), //C button colors
    onSurface: HexColor('#26587d'), //= Button color
    onTertiary: HexColor('#645c59'), //the result text and backspace button

    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 0,
    iconTheme: IconThemeData(
      size: 40.0,
      color: Colors.black,
    ),
    color: HexColor('#ebe4d1'),
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
      // wordSpacing: 5.0,
      letterSpacing: 3.0,
      fontSize: 30,
      fontWeight: FontWeight.w500,
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
  colorScheme: ColorScheme.fromSeed(
    primary: HexColor('#2e2e2e'), //top container background 1
    onPrimary: HexColor('#e1e1e1'), //main bottom text color 2
    secondary: HexColor('#1e1e1e'), //bottom container background 2
    onSecondary: HexColor('#2e2e2e'), //getButtonColor main buttons
    seedColor: HexColor('#e2e2e2'), //main bottons colors

    tertiary: HexColor('#3e3e3e'), //oparions bottons colors
    error: HexColor('#e45604'), //C button colors
    onSurface: HexColor('#26587d'), //= Button color
    onTertiary: HexColor('#b5b5b5'), //the result text and backspace button

    brightness: Brightness.dark,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 0,
    iconTheme: IconThemeData(
      size: 40.0,
      color: Colors.white,
    ),
    color: HexColor('#2e2e2e'),
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
      // wordSpacing: 5.0,
      letterSpacing: 3.0,
      fontSize: 30,
      fontWeight: FontWeight.w500,
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

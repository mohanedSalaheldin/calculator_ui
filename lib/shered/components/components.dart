import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';

Widget defaultFullyRoundedButton({
  required String text,
  required Function()? onPressed,
}) =>
    Expanded(
      child: Container(
        height: 50,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: MaterialButton(
          onPressed: onPressed,
          color: Colors.white,
          elevation: 0.0,
          child: Text(
            text,
            style: TextStyle(
              color: defaultColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );

Widget defaultRoundedButton({
  required String text,
  double height = 80,
  Color? color = Colors.white,
  Color? textColor,
  int flex = 1,
  required Function()? onPressed,
}) =>
    Expanded(
      flex: flex,
      child: Container(
        height: height,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: MaterialButton(
          onPressed: onPressed,
          color: color,
          elevation: 0.0,
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? defaultColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );

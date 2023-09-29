import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';

Widget defaultFullyRoundedButton({
  required String text,
}) =>
    Expanded(
      child: Container(
        height: 50,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: MaterialButton(
          onPressed: () {},
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
  Color? color = Colors.white,
  Color? textColor,
}) =>
    Expanded(
      child: Container(
        height: 80,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          minWidth: 1.0,
          onPressed: () {},
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

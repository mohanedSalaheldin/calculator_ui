import 'package:calculator_ui/cubit/cubit.dart';
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

Widget defaultButtonBox({
  required context,
  required String text,
  bool isEqual = false,
}) {
  double normalHeight = deviceWidth(context) / 4.7;
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(7),
      // boxShadow: const [
      //   BoxShadow(
      //     color: Color.fromARGB(255, 154, 154, 154),
      //     offset: Offset(
      //       1.0,
      //       2.0,
      //     ),
      //     blurRadius: .6,
      //     spreadRadius: .1,
      //   ),
      // ],
    ),
    height: isEqual ? (normalHeight + (normalHeight * .04)) * 2 : normalHeight,
    width: deviceWidth(context) / 4.7,
    child: MaterialButton(
      color: getButtonColor(text, context),
      onPressed: handleButtonOnPressed(text, context),
      child: Text(
        text,
        style: TextStyle(
          color: getTextColor(text, context),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Function()? handleButtonOnPressed(txt, context) {
  if (txt == '=') {
    return () {
      CalculatorCubit.get(context).calculateResult();
    };
  } else if (txt == 'C') {
    return () {
      CalculatorCubit.get(context).clearAllCharacter();
    };
  } else {
    return () {
      CalculatorCubit.get(context).addCharacter(txt);
    };
  }
}

Color getButtonColor(String txt, context) {
  // print(txt == '=');

  if (txt == '=') {
    return Theme.of(context).colorScheme.onSurface;
  } else if (txt == 'C') {
    return Theme.of(context).colorScheme.error;
  } else if (txt == '(' ||
      txt == ')' ||
      txt == '÷' ||
      txt == '×' ||
      txt == '-' ||
      txt == '+' ||
      txt == '.') {
    return Theme.of(context).colorScheme.tertiary;
  }
  {
    return Theme.of(context).colorScheme.onSecondary;
  }
}

Color getTextColor(String txt, context) {
  // print(txt == '=');

  if (txt == '=' || txt == 'C') {
    return Colors.white;
  } else {
    return Theme.of(context).colorScheme.onPrimary;
  }
}

Widget expandedVerticalSizedBox() => const Expanded(
      child: SizedBox(
        height: 20.0,
      ),
    );
Widget expandedHorizentalSizedBox() => const Expanded(
      child: SizedBox(
        width: 20.0,
      ),
    );

Widget buildColumnOfbutton({
  required context,
  // required int numOfBottons,
  required List<String> buttonText,
}) {
  List<Widget> children = [];
  for (var i = 0; i < buttonText.length; i++) {
    if (buttonText[i] == '=') {
      children.add(
        defaultButtonBox(context: context, text: buttonText[i], isEqual: true),
      );
    } else {
      children.add(
        defaultButtonBox(context: context, text: buttonText[i]),
      );
    }

    if (i != buttonText.length - 1) {
      children.add(
        expandedVerticalSizedBox(),
      );
    }
  }
  return Column(
    children: children,
  );
}

import 'package:calculator_ui/cubit/bloc_observer.dart';
import 'package:calculator_ui/cubit/cubit.dart';
import 'package:calculator_ui/cubit/states.dart';
import 'package:calculator_ui/shered/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/calculator_screen.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorCubit(),
      child: BlocConsumer<CalculatorCubit, CalculatorStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: CalculatorCubit.get(context).isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: CalculatorScreen(),
          );
        },
      ),
    );
  }
}

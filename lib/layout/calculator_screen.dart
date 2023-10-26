import 'package:calculator_ui/cubit/cubit.dart';
import 'package:calculator_ui/cubit/states.dart';
import 'package:calculator_ui/shered/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});
  final mainFormController = TextEditingController();
  final seconderyFormController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalculatorCubit, CalculatorStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CalculatorCubit.get(context);
        mainFormController.text = cubit.mainText;
        seconderyFormController.text = cubit.secondaryText;

        return Scaffold(
          appBar: AppBar(
            title: IconButton(
              onPressed: () {
                cubit.changeTheme();
              },
              icon: Icon(
                cubit.isDark ? Icons.brightness_4 : Icons.brightness_4_outlined,
                // Icons.brightness_4,
                // Icons.brightness_4_outlined,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                cubit.mainText,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              IconButton(
                                onPressed: () {
                                  cubit.removeCharacter();
                                },
                                icon: Icon(
                                  Icons.backspace,
                                  size: 40.0,
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            cubit.secondaryText,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onTertiary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  // margin: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.width * 1.2,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 5.0,
                      left: 20.0,
                      right: 20.0,
                      top: 5.0,
                    ),
                    child: Row(
                      children: [
                        buildColumnOfbutton(
                          buttonText: ['(', '7', '4', '1', 'C'],
                          context: context,
                        ),
                        expandedHorizentalSizedBox(),
                        buildColumnOfbutton(
                          buttonText: [')', '8', '5', '2', '0'],
                          context: context,
                        ),
                        expandedHorizentalSizedBox(),
                        buildColumnOfbutton(
                          buttonText: ['÷', '9', '6', '3', '.'],
                          context: context,
                        ),
                        expandedHorizentalSizedBox(),
                        buildColumnOfbutton(
                          buttonText: ['×', '-', '+', '='],
                          context: context,
                        ),
                        // expandedHorizentalSizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

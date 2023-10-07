import 'package:calculator_ui/cubit/cubit.dart';
import 'package:calculator_ui/cubit/states.dart';
import 'package:calculator_ui/shered/components/components.dart';
import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});
  var mainFormController = TextEditingController();
  var seconderyFormController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorCubit(),
      child: BlocConsumer<CalculatorCubit, CalculatorStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CalculatorCubit.get(context);
          mainFormController.text = cubit.mainText;
          seconderyFormController.text = cubit.secondaryText;
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  defaultVerticalSizedBox(),
                  defaultVerticalSizedBox(),
                  defaultVerticalSizedBox(),
                  Expanded(
                    // flex: 2,
                    child: Container(
                      width: double.infinity,
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextFormField(
                            controller: seconderyFormController,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            textAlign: TextAlign.end,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: mainFormController,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30.0,
                  // ),

                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      // color: Colors.redAccent,
                      child: Column(
                        children: [
                          defaultVerticalSizedBox(),
                          Row(
                            children: [
                              defaultFullyRoundedButton(
                                text: 'Ans',
                                onPressed: () {
                                  cubit.reuseAnswer();
                                },
                              ),
                              defaultHorizentalSizedBox(),
                              defaultFullyRoundedButton(
                                text: '-/+',
                                onPressed: () {
                                  cubit.reverseSignal();
                                  // var list = ['1', '3'];
                                  // list.insert(1, '2');
                                  // print(list);
                                },
                              ),
                              defaultHorizentalSizedBox(),
                              defaultFullyRoundedButton(
                                text: '√',
                                onPressed: () {
                                  cubit.addCharacter('^.5');
                                },
                              ),
                              defaultHorizentalSizedBox(),
                              defaultFullyRoundedButton(
                                text: 'x²',
                                onPressed: () {
                                  cubit.addCharacter('^2');
                                },
                              ),
                            ],
                          ),
                          defaultVerticalSizedBox(),
                          Row(
                            children: [
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.clearAllCharacter();
                                },
                                text: 'Ac',
                                textColor: HexColor('#6e6f6f'),
                              ),
                              defaultHorizentalSizedBox(),
                              Expanded(
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: MaterialButton(
                                    // minWidth: 1.0,
                                    onPressed: () {
                                      cubit.removeCharacter();
                                    },
                                    color: Colors.white,
                                    elevation: 0.0,
                                    child: Icon(
                                      Icons.backspace_outlined,
                                      color: HexColor('#6e6f6f'),
                                    ),
                                  ),
                                ),
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('/');
                                },
                                text: '/',
                                color: HexColor('#ade2ff'),
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('*');
                                },
                                text: '*',
                                color: HexColor('#ade2ff'),
                              ),
                            ],
                          ),
                          defaultVerticalSizedBox(),
                          Row(
                            children: [
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('7');
                                },
                                text: '7',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('8');
                                },
                                text: '8',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('9');
                                },
                                text: '9',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('-');
                                },
                                text: '-',
                                color: HexColor('#ade2ff'),
                              ),
                            ],
                          ),
                          defaultVerticalSizedBox(),
                          Row(
                            children: [
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('4');
                                },
                                text: '4',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('5');
                                },
                                text: '5',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('6');
                                },
                                text: '6',
                              ),
                              defaultHorizentalSizedBox(),
                              defaultRoundedButton(
                                onPressed: () {
                                  cubit.addCharacter('+');
                                },
                                text: '+',
                                color: HexColor('#ade2ff'),
                              ),
                            ],
                          ),
                          defaultVerticalSizedBox(),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        defaultRoundedButton(
                                          onPressed: () {
                                            cubit.addCharacter('1');
                                          },
                                          text: '1',
                                        ),
                                        defaultHorizentalSizedBox(),
                                        defaultRoundedButton(
                                          onPressed: () {
                                            cubit.addCharacter('2');
                                          },
                                          text: '2',
                                        ),
                                        defaultHorizentalSizedBox(),
                                        defaultRoundedButton(
                                          onPressed: () {
                                            cubit.addCharacter('3');
                                          },
                                          text: '3',
                                        ),
                                      ],
                                    ),
                                    defaultVerticalSizedBox(),
                                    Row(
                                      children: [
                                        defaultRoundedButton(
                                          onPressed: () {
                                            cubit.addCharacter('0');
                                          },
                                          text: '0',
                                        ),
                                        defaultHorizentalSizedBox(),
                                        Container(
                                          height: 80,
                                          // width: 90,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: MaterialButton(
                                            // minWidth: 1.0,
                                            onPressed: () {
                                              cubit.addCharacter('.');
                                            },
                                            color: HexColor('#ade2ff'),
                                            elevation: 0.0,
                                            child: Text(
                                              ".",
                                              style: TextStyle(
                                                color: defaultColor,
                                                fontSize: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              defaultHorizentalSizedBox(),
                              Container(
                                height: 185,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: MaterialButton(
                                  // minWidth: 1.0,
                                  onPressed: () {
                                    // print();
                                    Parser p = Parser();
                                    Expression exp = p.parse('4 ^ .5');
                                    ContextModel cm = ContextModel();
                                    print(
                                        exp.evaluate(EvaluationType.REAL, cm));

                                    if (cubit.mainText.isNotEmpty) {
                                      cubit.calculateResult();
                                    }
                                  },
                                  color: HexColor('#ade2ff'),
                                  elevation: 0.0,
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                      color: defaultColor,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget defaultHorizentalSizedBox() => const SizedBox(
      width: 20.0,
    );
Widget defaultVerticalSizedBox() => const SizedBox(
      height: 20.0,
    );

import 'package:calculator_ui/shered/components/components.dart';
import 'package:calculator_ui/shered/styles/constants.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controller.text = '=12,400';
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '6000/2+2349*3',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: controller,
                      decoration: InputDecoration(border: InputBorder.none),
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
                    Row(
                      children: [
                        defaultFullyRoundedButton(text: 'e'),
                        defaultHorizentalSizedBox(),
                        defaultFullyRoundedButton(text: 'µ'),
                        defaultHorizentalSizedBox(),
                        defaultFullyRoundedButton(text: 'sin'),
                        defaultHorizentalSizedBox(),
                        defaultFullyRoundedButton(text: 'deg'),
                      ],
                    ),
                    defaultVerticalSizedBox(),
                    Row(
                      children: [
                        defaultRoundedButton(
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
                                borderRadius: BorderRadius.circular(10)),
                            child: MaterialButton(
                              // minWidth: 1.0,
                              onPressed: () {},
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
                          text: '/',
                          color: HexColor('#ade2ff'),
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '*',
                          color: HexColor('#ade2ff'),
                        ),
                      ],
                    ),
                    defaultVerticalSizedBox(),
                    Row(
                      children: [
                        defaultRoundedButton(
                          text: '7',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '8',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '9',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '-',
                          color: HexColor('#ade2ff'),
                        ),
                      ],
                    ),
                    defaultVerticalSizedBox(),
                    Row(
                      children: [
                        defaultRoundedButton(
                          text: '4',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '5',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
                          text: '6',
                        ),
                        defaultHorizentalSizedBox(),
                        defaultRoundedButton(
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
                                    text: '1',
                                  ),
                                  defaultHorizentalSizedBox(),
                                  defaultRoundedButton(
                                    text: '2',
                                  ),
                                  defaultHorizentalSizedBox(),
                                  defaultRoundedButton(
                                    text: '3',
                                  ),
                                ],
                              ),
                              defaultVerticalSizedBox(),
                              Row(
                                children: [
                                  defaultRoundedButton(
                                    text: '0',
                                  ),
                                  defaultHorizentalSizedBox(),
                                  Container(
                                    height: 80,
                                    // width: 90,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: MaterialButton(
                                      // minWidth: 1.0,
                                      onPressed: () {},
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
                        // defaultRoundedButton(
                        //   flex: 1,
                        //   height: 160,
                        //   text: '=',
                        //   color: HexColor('#ade2ff'),
                        // ),
                        Container(
                          height: 185,
                          // width: 90,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: MaterialButton(
                            // minWidth: 1.0,
                            onPressed: () {},
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
  }
}

Widget defaultHorizentalSizedBox() => const SizedBox(
      width: 25.0,
    );
Widget defaultVerticalSizedBox() => const SizedBox(
      height: 25.0,
    );

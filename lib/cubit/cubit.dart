import 'package:calculator_ui/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCubit extends Cubit<CalculatorStates> {
  // CalculatorCubit(super.initialState);
  CalculatorCubit() : super(InitialState());
  String mainText = '';
  String secondaryText = '';

  static CalculatorCubit get(context) => BlocProvider.of(context);

  // ThemeMode appTheme = ThemeMode.light;
  bool isDark = false;
  void changeTheme() {
    isDark = !isDark;
    emit(AppThemeChangeState());
  }

  void addCharacter(String button) {
    mainText += button;
    emit(CharAddedState());
  }

  void removeCharacter() {
    if (mainText.isNotEmpty) {
      mainText = mainText.substring(0, mainText.length - 1);
    }
    emit(CharRemovedState());
  }

  void clearAllCharacter() {
    mainText = '';
    secondaryText = '';
    emit(ClearAllState());
  }

  double result = 0;
  void calculateResult() {
    // print('Hi from Results');
    String preExpression = mainText.replaceAll(RegExp(r'×'), '*');
    preExpression = preExpression.replaceAll(RegExp(r'÷'), '/');
    // mainText.replaceAll('', '/');
    // print(preExpression);
    Parser p = Parser();
    Expression exp = p.parse(preExpression);
    ContextModel cm = ContextModel();
    result = exp.evaluate(EvaluationType.REAL, cm);
    secondaryText = mainText;
    mainText = '${(result - result.floor() == 0 ? result.floor() : result)}';
    emit(CalculateResultState());
  }

  void reuseAnswer() {
    if (mainText.isNotEmpty) {
      mainText = mainText.substring(1, mainText.length);
    }
    emit(ReuseAnswerState());
  }

  void reverseSignal() {
    var list = mainText.split('');

    for (var i = list.length - 1; i >= 0; i--) {
      if (list[i].contains('+') ||
          list[i].contains('-') ||
          list[i].contains('*') ||
          list[i].contains('/')) {
        if (list[i].contains('-')) {
          list[i] = '+';
        } else if (list[i].contains('+')) {
          list[i] = '-';
        } else {
          list.insert(i + 1, '-');
        }
      }
    }
    mainText = '';
    for (var element in list) {
      mainText += element;
    }
    emit(ReuseAnswerState());
  }
}

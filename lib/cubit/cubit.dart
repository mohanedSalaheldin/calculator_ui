import 'package:calculator_ui/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCubit extends Cubit<CalculatorStates> {
  // CalculatorCubit(super.initialState);
  CalculatorCubit() : super(InitialState());
  String mainText = '';
  String secondaryText = '';

  static CalculatorCubit get(context) => BlocProvider.of(context);

  void addCharacter(String button) {
    mainText += button;
    emit(CharAddedState());
  }

  void removeCharacter() {
    if (mainText != null && mainText.length > 0) {
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
    Parser p = Parser();
    Expression exp = p.parse(mainText);
    ContextModel cm = ContextModel();
    result = exp.evaluate(EvaluationType.REAL, cm);
    secondaryText = mainText;
    mainText = '=${(result - result.floor() == 0 ? result.floor() : result)}';
    emit(CalculateResultState());
  }
}

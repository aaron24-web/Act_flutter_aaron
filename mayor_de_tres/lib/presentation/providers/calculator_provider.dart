import 'package:flutter/material.dart';
import 'package:mayor_de_tres/domain/usecases/find_greatest_number.dart';

class CalculatorProvider extends ChangeNotifier {
  double? number1;
  double? number2;
  double? number3;
  double? result;

  final FindGreatestNumber _findGreatestNumber = FindGreatestNumber();

  void updateNumber1(String value) {
    number1 = double.tryParse(value);
    notifyListeners();
  }

  void updateNumber2(String value) {
    number2 = double.tryParse(value);
    notifyListeners();
  }

  void updateNumber3(String value) {
    number3 = double.tryParse(value);
    notifyListeners();
  }

  void calculateGreatest() {
    result = _findGreatestNumber.execute(
      n1: number1,
      n2: number2,
      n3: number3,
    );
    notifyListeners();
  }
}

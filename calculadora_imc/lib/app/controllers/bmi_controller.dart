import 'dart:math';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/cupertino.dart';

class BmiController extends ChangeNotifier {
  static BmiController instance = BmiController();

  double newbmi = 0;

  bmiCalculator({userHeight, userWeight}) {
    final double height = double.parse(
        StringUtils.addCharAtPosition(userHeight.toString(), '.', 1));
    final double wheight =
        double.parse(userWeight.toString().replaceAll(',', '.'));

    newbmi = wheight / pow(height, 2);

    notifyListeners();
  }
}

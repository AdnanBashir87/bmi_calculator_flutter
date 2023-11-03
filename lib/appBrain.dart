import 'dart:math';

class AppBrain {
  AppBrain({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 10;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'underWeight';
    } else {
      return 'Normal';
    }
  }

  String getInterpretations() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise More.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have lower than normal body weight. You can a eat more.';
    }
  }
}

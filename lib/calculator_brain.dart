import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height, 2);
    _bmi = _bmi * 703;

    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25) {
      return 'OVERWEIGHT';
    }
    else if ( _bmi > 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25) {
      return 'Your BMI is registered higher than normal. Try increasing physical activity and having a healthier diet.';
    }
    else if ( _bmi > 18.5){
      return 'Your BMI is normal. Keep doing what you\'re doing!';
    }
    else{
      return 'Your BMI is registered lower than normal. Try lifting heavier weights and eating more frequently';
    }
  }
}


import 'dart:math';
class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});

  String calculateBMI(){
   _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
      print('Overweight');
    }
    else if(_bmi > 18.2){
      return 'Normal';
    }
    else {
     return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Join the gym';
    }
    else if(_bmi > 18.2){
    return 'You are healthy';
    }
    else {
    return 'Need to eat more';
    }
  }
}
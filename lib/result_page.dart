import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/resuable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'calculator_brain.dart';

class Resultpage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  Resultpage({this.bmiResult,this.resultText,this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Your Result',style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
            ),),
            Expanded(
              child: ReusableCard(colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: Text(resultText.toLowerCase(),style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0
                  ),)),
                  Center(child: Text(bmiResult,style: TextStyle(
                    fontSize: 150.0
                  ),)),
                  Text(resultInterpretation,textAlign:TextAlign.center, style: TextStyle(
                    fontSize: 22.0,
                  ),),
                ],
              ),
              )
            ),
            BottomButton(onTap: () {
              Navigator.pop(context);
            },buttonName: 'Recalculate')
          ],
        )
      ),
    );
  }
}

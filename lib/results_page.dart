import 'package:bmi/Reusable.dart';
import 'package:bmi/bottom_button.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.textResult,
      @required this.interpretation});

  final String? bmiResult;
  final String? textResult;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult!,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}

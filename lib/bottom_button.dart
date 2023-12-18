import 'package:flutter/material.dart';
import 'package:bmi/Constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.text});

  final String? text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: kLargeButtonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Constants.dart';

class textAndIcons extends StatelessWidget {
  textAndIcons({@required this.icon, this.text});

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text!,
          style: kTextStyle,
        )
      ],
    );
  }
}

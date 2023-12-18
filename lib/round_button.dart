import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData? icon;

  RoundIconButton({@required this.onPressed, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 5,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      fillColor: Color(0xFF222747),
      shape: CircleBorder(),
    );
  }
}

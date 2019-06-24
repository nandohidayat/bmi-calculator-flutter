import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    @required this.iconData,
    @required this.onPressed,
  });

  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 65,
        height: 65,
      ),
      shape: CircleBorder(),
      fillColor: kFloatingButtonColor,
    );
  }
}

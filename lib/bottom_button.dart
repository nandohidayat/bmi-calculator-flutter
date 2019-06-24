import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.text,
    @required this.onTap,
  });

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLabelStyle.copyWith(
              color: kActiveCardColor,
              letterSpacing: 2,
            ),
          ),
        ),
        height: 80,
        color: kBottomButtonColor,
      ),
    );
  }
}

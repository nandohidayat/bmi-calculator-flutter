import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({
    @required this.icon,
    @required this.text,
    @required this.color,
  });

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 90,
          color: color,
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: color),
        )
      ],
    );
  }
}

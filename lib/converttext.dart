import 'package:flutter/material.dart';

class ConvertText extends StatelessWidget {
  const ConvertText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          'Convert to',
          style: TextStyle(
              fontSize: 18,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.black),
        ),
        Text(
          'Convert to',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.result,
  }) : super(key: key);

  final double result;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Result',
                style: TextStyle(
                    fontSize: 18,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.black),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Result',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 20,
        ),
        TextFormField(
          enabled: false,
          decoration: InputDecoration(
            hintText: '$result',
            icon: Icon(Icons.send),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

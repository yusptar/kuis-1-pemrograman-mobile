import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.SpeedController,
  }) : super(key: key);

  final TextEditingController SpeedController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Input',
                style: TextStyle(
                    fontSize: 18,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Input',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        TextFormField(
          controller: SpeedController,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            hintText: 'Input Data',
            icon: Icon(Icons.input),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

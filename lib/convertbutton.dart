import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  const Convert({
    Key key,
    @required this.convertHandler,
  }) : super(key: key);

  final Function convertHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 50,
      width: 200,
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
        child: Text(
          "Start Conversion",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        onPressed: convertHandler,
        color: Colors.white,
      ),
    );
  }
}

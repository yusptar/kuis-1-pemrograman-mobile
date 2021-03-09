import 'package:flutter/material.dart';

class DropDownButton2 extends StatelessWidget {
  const DropDownButton2({
    Key key,
    @required this.listItem2,
    @required this.methodScript2,
    @required this.valueDropDown2,
  }) : super(key: key);

  final List<String> listItem2;
  final Function methodScript2;
  final String valueDropDown2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DropdownButton<String>(
        items: listItem2.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: valueDropDown2,
        onChanged: methodScript2,
      ),
    );
  }
}

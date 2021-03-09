import 'package:flutter/material.dart';

class DropDownButton extends StatelessWidget {
  const DropDownButton({
    Key key,
    @required this.listItem,
    @required this.methodScript,
    @required this.valueDropDown,
  }) : super(key: key);

  final List<String> listItem;
  final Function methodScript;
  final String valueDropDown;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DropdownButton<String>(
        items: listItem.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: valueDropDown,
        onChanged: methodScript,
      ),
    );
  }
}

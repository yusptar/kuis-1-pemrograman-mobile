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
    return TextFormField(
      controller: SpeedController,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(
        hintText: 'Inputkan Angka',
      ),
    );
  }
}

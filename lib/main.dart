import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuis1/result.dart';
import 'converttext.dart';
import 'dropdown2.dart';
import 'input.dart';
import 'dropdown.dart';

void main() => runApp(SpeedConversion());

class SpeedConversion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainSpeed();
}

class MainSpeed extends State<SpeedConversion> {
  final Controller = TextEditingController();
  double _input = 0;
  String _valueDropDown = "Kilometer/Hours";
  String _valueDropDown2 = "Kilometer/Hours";
  double _result = 0;
  List<String> List1 = [
    "Kilometer/Hours",
    "Kilometer/Seconds",
    "Meter/Seconds"
  ];
  List<String> List2 = [
    "Kilometer/Hours",
    "Kilometer/Seconds",
    "Meter/Seconds"
  ];

  void rumusKecepatan() => setState(() {
        _input = double.parse(Controller.text);
        if (_valueDropDown == "Kilometer/Hours") {
          if (_valueDropDown2 == "Kilometer/Hours") {
            _result = _input;
          } else if (_valueDropDown2 == "Kilometer/Seconds") {
            _result = _input / 3600;
          } else if (_valueDropDown2 == "Meter/Seconds") {
            _result = (_input * 1000) / 3600;
          }
        } else if (_valueDropDown == "Kilometer/Seconds") {
          if (_valueDropDown2 == "Kilometer/Seconds") {
            _result = _input;
          } else if (_valueDropDown2 == "Kilometer/Hours") {
            _result = 3600 * _input;
          } else if (_valueDropDown2 == "Meter/Seconds") {
            _result = _input * 1000;
          }
        } else {
          if (_valueDropDown2 == "Kilometer/Hours") {
            _result = (_input / 1000) * 3600;
          } else if (_valueDropDown2 == "Kilometer/Seconds") {
            _result = _input / 1000;
          } else if (_valueDropDown2 == "Meter/Seconds") {
            _result = _input;
          }
        }
        //listViewItem.add("$_valueDropDown : $_result");
      });

  void onChanged(String changeValue) {
    setState(() {
      _valueDropDown = changeValue;
    });
    rumusKecepatan();
  }

  void onChanged2(String changeValue) {
    setState(() {
      _valueDropDown2 = changeValue;
    });
    rumusKecepatan();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis 1 Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Speed Conversion"),
        ),
        body: Container(
          margin: EdgeInsets.all(4),
          child: Column(
            children: [
              DropDownButton(
                listItem: List1,
                valueDropDown: _valueDropDown,
                methodScript: onChanged,
              ),
              ConvertText(),
              DropDownButton2(
                listItem2: List2,
                valueDropDown2: _valueDropDown2,
                methodScript2: onChanged2,
              ),
              Container(
                height: 40,
              ),
              Input(SpeedController: Controller),
              Container(
                height: 20,
              ),
              Result(result: _result),
              /*Convert(convertHandler: rumusSuhu),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

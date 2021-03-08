import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuis1/result.dart';
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

  void onChanged(String changeValue) => setState(() {
        _valueDropDown = changeValue;
        rumusKecepatan();
      });

  void onChanged2(String changeValue) => setState(() {
        _valueDropDown2 = changeValue;
        rumusKecepatan();
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Speed Conversion"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: DropDownButton(
                  listItem: List1,
                  valueDropDown: _valueDropDown,
                  methodScript: onChanged,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: DropdownButton<String>(
                  items: List2.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _valueDropDown2,
                  onChanged: onChanged2,
                ),
              ),
              Input(SpeedController: Controller),
              Result(result: _result),
              /*Convert(convertHandler: rumusSuhu),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: RiwayatKonversi(listViewItem: listViewItem),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

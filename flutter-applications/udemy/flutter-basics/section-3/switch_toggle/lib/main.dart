import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Switch Toggle in Google Flutter",
      home: MyApp()
    ),
  );  
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _value1 = false;
  bool _value2 = false;

  void _setValue1(bool? value) => setState(()=> _value1 = value! );
  void _setValue2(bool? value) => setState(()=> _value2 = value! );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch (Toggle)"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget> [
              Switch(
                value: _value1,
                onChanged: _setValue1,
                activeColor: Colors.green,
                ),
              SwitchListTile(
                value: _value2,
                onChanged: _setValue2,
                title: Text("Turn In",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                )),
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
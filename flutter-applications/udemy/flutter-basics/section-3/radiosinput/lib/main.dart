import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Radios Input in Google Flutter",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int? value) => setState(() => _value1 = value!);
  void _setValue2(int? value) => setState(() => _value2 = value!);

  Widget makeRadios() {
    List<Widget> list = <Widget> [];

    for(int i = 0; i < 3; i++) {
      list.add(
        Radio(
          value: i,
          groupValue: _value1,
           onChanged: _setValue1
        )
      );
    }

    Column column = Column (children: [],);
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> list = <Widget>[];

    for(int i =0; i < 3; i++) {
      list.add(
        RadioListTile(
          value: i,
          groupValue: _value2,
           onChanged: _setValue2,
           activeColor: Colors.green,
           controlAffinity: ListTileControlAffinity.trailing,
           title: Text("Cricketer no # $i"),
           subtitle: Text("PK"),
           secondary: Icon(Icons.play_circle_fill),
          )
      );
    }

    Column column = Column (children: [],);
    return column;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radios input in Google Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              makeRadios(),
              makeRadioTiles()
            ],
          ),
        ),
      ),
    );
  }
}


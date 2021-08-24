import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slider in Google Flutter",
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    ),
  );  
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double _value1 = 0.00;

  void _setValue1(double value) => setState(()=> _value1 = value );
 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget> [
              Text("Progress: ${(_value1 * 100).round()}"),
              Slider(
                value: _value1,
                onChanged: _setValue1,
                activeColor: Colors.green,
                )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slider in Google Flutter",
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.blue
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

  String _str = "";


  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget> [
              Text(_str),
              // IconButton(onPressed: _showDateTime, icon: Icon(Icons.timer)),
              
            ],
          ),
        ),
      ),
    );
  }
}

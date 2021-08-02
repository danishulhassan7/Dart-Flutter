import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World, XPF'),
          backgroundColor: Colors.cyan[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/dp.png"),
          ),
        ),
      ),
    ),
  );
}

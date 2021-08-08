import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "AwesomeApp",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App (XPF)"),
      ),
      body: Container(
        child: Center(
          child: Text("Hello in awesome app")),
      ),
    );
  }
}
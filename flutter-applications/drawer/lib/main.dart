import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My First Drawer in Flutter",
    home: DrawerApp(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XPF Mail"),
      ),
      body: Container(
        
      ),
    );
  }
}
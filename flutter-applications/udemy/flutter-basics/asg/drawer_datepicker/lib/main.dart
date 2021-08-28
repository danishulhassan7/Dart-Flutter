import 'dart:html';

import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice: Google Flutter",
      theme: ThemeData(
        primarySwatch: Colors.lime
      ),
      home: Asg(),
    );
  }
}

class Asg extends StatefulWidget {
  const Asg({ Key? key }) : super(key: key);

  @override
  _AsgState createState() => _AsgState();
}

class _AsgState extends State<Asg> {


  var _str = "";

  void _onClicked() {
    setState(() {
      _str = DateTime.now().toString();
    });
    Navigator.pop(context);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Flutter | @XPF"),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [
                Icon(Icons.person),
                Text("Account"),
                ElevatedButton(onPressed: _onClicked, child: Icon(Icons.logout))
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Date & Time: $_str"),
            ],
          ),
        ),
      ),
    );
  }
}
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

  String _str = "Hello World";

  void _displayName() {
    setState(() {
      _str = "MY name is Danish Ul Hassan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Flutter | @XPF"),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_str),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: _displayName, child: Text("Show Name"))
            ],
          ),
        ),
      ),
    );
  }
}
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

  void _displayName(var str) {
    setState(() {
      _str = "Your name is, $str";
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
              Row(
                children: <Widget>[
              Text("Name: "),
              SizedBox(
                width: 10,
              ),
              Expanded(child: TextField(
                onSubmitted: _displayName,
              ),),
              SizedBox(
                height: 70,
              ),
                ],
              ),
              Row(
                children: <Widget>[
                  Center(child: Text(_str)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
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
  var _display = "";

  void _onChanged(var str) {
    setState(() {
      _str = str;
    });
  }

  void _displayName() {
    setState(() {
      _display = _str;
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
                onChanged: _onChanged,
              ),),
              SizedBox(
                height: 70,
              ),
                ],
              ),
              Row(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(onPressed: _displayName, child: Text("Hit Submit"))
                    ),
                    SizedBox(width: 50,),
                    Center(child: Text(_display))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
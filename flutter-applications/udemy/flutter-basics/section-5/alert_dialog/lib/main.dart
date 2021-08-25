import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Notifcations (Dialogs) in Google Flutter",
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

Future _showAlertDialogBox() async {
  await showDialog(
    context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text("Do you really like flutter?",
         style: TextStyle(
           color:Colors.teal
         ),
         ),
         actions: <Widget>[
           IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: Colors.red,))
         ],
       );
     }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("This is where the Magic happens"),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: _showAlertDialogBox, icon: Icon(Icons.lock))
            ],
          ),
        ),
      ),
    );
  }
}
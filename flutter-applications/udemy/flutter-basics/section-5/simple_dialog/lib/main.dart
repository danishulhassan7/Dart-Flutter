import 'dart:html';

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

enum Answers {YES, NO, MAYBE}

class _MyAppState extends State<MyApp> {

  String _str = '';

  void _getValue(String str) => setState(() => _str = str );

  Future _askUser() async {
    switch(
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Do you like Google Flutter? "),
            children: <Widget>[
              SimpleDialogOption(child: Text("YES !!"), onPressed: (){ Navigator.pop(context, Answers.YES); },),
              SimpleDialogOption(child: Text("NO :("), onPressed: (){ Navigator.pop(context, Answers.NO); },),
              SimpleDialogOption(child: Text("MAYBE :/"), onPressed: (){ Navigator.pop(context, Answers.MAYBE); },),

            ],
          );
        }
        )
    ) {
      case Answers.YES:
        _getValue("YES");
        break;
      case Answers.NO:
        _getValue("NO");
        break;
      case Answers.MAYBE:
        _getValue("MAYBE");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Simple Dialog"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("The answer is: $_str"),
              ElevatedButton(onPressed: _askUser, child: Text("Results"))
            ],
          ),
        ),
      ),
    );
  }
}
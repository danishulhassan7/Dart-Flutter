import 'package:flutter/material.dart';

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

  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showSnackBar() {
    _scaffoldstate.currentState.showSnackBar(snackbar)(
      SnackBar(
        content: Text("Hello World....")
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("This is where the Magic happens"),
              ElevatedButton(onPressed: _showSnackBar, child: Text("Show Snack Bar"))
            ],
          ),
        ),
      ),
    );
  }
}
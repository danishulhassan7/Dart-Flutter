import 'package:flutter/material.dart';

void main() => runApp(Setup());

class Setup extends StatelessWidget {
  const Setup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout in Google Flutter",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Columns"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Images using Expanded",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 20,
            ),
             new Expanded(child: new Image.asset('images/flutterimg.jpg')),
            new Expanded(child: new Image.network('http://voidrealms.com/images/smile.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}
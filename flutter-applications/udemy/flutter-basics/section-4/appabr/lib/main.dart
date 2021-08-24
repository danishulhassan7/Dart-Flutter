import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Scaffold Appbar",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
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

  int _count = 0;

  void _add() => setState(() => _count++);
  void _sub() => setState(() => _count--);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: _add, icon: Icon(Icons.add), color: Colors.green,),
          IconButton(onPressed: _sub, icon: Icon(Icons.remove), color: Colors.white, )

        ],
        backgroundColor: Colors.deepOrange,
        title: Text("App Bar"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Count: $_count",
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic
              ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
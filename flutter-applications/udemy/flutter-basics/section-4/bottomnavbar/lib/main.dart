import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: "Bottom Navigation Bar",
      theme: ThemeData(
        primarySwatch: Colors.green
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

  String _str = "";
  int _val = 0;
  List<BottomNavigationBarItem> _items = [];

  @override
  void initState() {
    super.initState();
    List<BottomNavigationBarItem> _items = [];
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.people, )));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.weekend, )));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.message, )));
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children:<Widget> [
              Text("Value: $_str")
          ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _val,
        onTap: (int item) {
          setState(() {
            _val = item;
            _str = "Current Value is: ${_val.toString()}";
          });
        },
        )
    );
  }
}
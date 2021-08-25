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

  int _currentIndex = 0;
  final List<Widget> _children = [];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
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
              Text("Bottom Navigation bar",
              style: TextStyle(
                fontSize: 22
              ),),
          ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           label: "Home",
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           label: "Messages",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: "Account"
         )
       ],
     ),
    );
  }
}


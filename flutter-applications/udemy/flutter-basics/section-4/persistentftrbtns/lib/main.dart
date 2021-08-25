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

  String _str = "";

_toShow(String str) => setState(() => _str = str );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("App Bar",
        style: TextStyle(
          color: Colors.white
        ),),
      ),

      drawer: Drawer(
        child: Container(
          child: Row(
            children: [
              ListTile(
                title: Text("Danish Ul Hassan"),
                subtitle: Text("Save details"),
                leading: Icon(Icons.verified_user),
                trailing: Icon(Icons.local_activity),
              ),
              SizedBox(
                height: 20,
              ),
                ListTile(
                title: Text("Password"),
                subtitle: Text("************"),
                leading: Icon(Icons.password),
                trailing: Icon(Icons.lock),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Close"))
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("You clicked: $_str",
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
      persistentFooterButtons: <Widget>[
        IconButton(onPressed: _toShow("Button # 01"), icon: Icon(Icons.people)),
        IconButton(onPressed: _toShow("Button # 02"), icon: Icon(Icons.map)),
        IconButton(onPressed: _toShow("Button # 03"), icon: Icon(Icons.timer)),
        IconButton(onPressed: _toShow("Button # 04"), icon: Icon(Icons.stacked_bar_chart)),
        IconButton(onPressed: _toShow("Button # 05"), icon: Icon(Icons.grade)),
        IconButton(onPressed: _toShow("Button # 06"), icon: Icon(Icons.home_filled)),
      ],
    );
  }
}
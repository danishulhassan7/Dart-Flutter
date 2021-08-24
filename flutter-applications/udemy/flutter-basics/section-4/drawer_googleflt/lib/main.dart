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

  void _showDate() => setState(() => _str = DateTime.now().toString() );

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
              Text("Date & Time: $_str",
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showDate();
        },
        mini: false,
        child: Icon(Icons.timer),
      ),
    );
  }
}
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

  void _showBottomModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Something went wrong",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Close"))
            ],
          ),
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Modal"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("This is where the Magic happens"),
              SizedBox(
                height: 20,
              ),
              IconButton(onPressed: _showBottomModal, icon: Icon(Icons.model_training))
            ],
          ),
        ),
      ),
    );
  }
}
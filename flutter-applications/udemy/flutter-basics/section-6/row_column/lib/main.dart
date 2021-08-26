import 'package:flutter/material.dart';

void main() => runApp(Setup());

class Setup extends StatelessWidget {
  const Setup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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



  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();


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
              Text("Account Credentials",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text("Username: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
                ,),
                Expanded(child: TextField(controller: _username,))
              ],
            ),
            Row(
              children: <Widget>[
                Text("Password: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                )
                ,),
                Expanded(child: TextField(controller: _password, obscureText: true,))
              ],
            ),
            Padding(
              padding:EdgeInsets.all(12.0),
              child: ElevatedButton(onPressed: () => print("Working, $_username"), child: Text("Submit"))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
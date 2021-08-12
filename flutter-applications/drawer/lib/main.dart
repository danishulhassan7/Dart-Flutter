import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My First Drawer in Flutter",
    home: DrawerApp(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ));
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XPF Mail"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              child: Text("Account Login Dashboard",style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account"),
              subtitle: Text("Personal Account"),
              trailing: Icon(Icons.edit),
            ),
              ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("danishulhassan@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, //by defualt
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My First Card in Flutter",
    home: DrawerApp(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text("XPF Mail"),
      ),
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/gg.PNG"),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            // Simple Text Header
            // DrawerHeader(
            //   child: Text("Account Login Dashboard",style: TextStyle(color: Colors.white),),
            //   decoration: BoxDecoration(
            //     color: Colors.teal,
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Danish Ul Hassan"),
              accountEmail: Text("danishulhassan7@gmail.com"),
              // Using Network Image
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("data:image/png;base64,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"),
              ),
              // Using Local Image
              // currentAccountPicture: CircleAvatar(
              //   child: Image(
              //     image: AssetImage("assets/dp.png"),
              //   ),
              // ),
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
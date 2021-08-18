import 'package:cards_stful/bg_image.dart';
import 'package:cards_stful/drawer.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {

  TextEditingController _nameController = TextEditingController();
  var myText = "Change the Text";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text("XPF Mail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                BgImage(),
                 SizedBox(
                   height: 10,
                 ),
                 Text(
                   myText,
                   style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                 SizedBox(
                   height: 20,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: TextField(
                     //obscureText: true,
                    // keyboardType: TextInputType.number,
                    controller: _nameController,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       hintText: "Enter your name",
                       labelText: "Name",
                     ),
                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, //by defualt
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
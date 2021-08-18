import 'package:cards_stful/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class DrawerApp extends StatefulWidget {
  const DrawerApp({ Key? key }) : super(key: key);
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change the Text";
  var url = "https://jsonplaceholder.typicode.com/photos/";
  var data;


  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    dynamic result = await  http.get(Uri.parse(url));
    data = jsonDecode(result.body);
    setState(() {});
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
        child: data != null
          ? ListView.builder(
            // --- Method for gridview
            // gridDelegate: 
            //   SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2
            //     ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  // leading: Image.network((data[index]["url"])),
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${(data[index]["id"])}"),
                ),
              );
            },
            itemCount: data.length,
            )
          : Center(
            child: CircularProgressIndicator(),
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
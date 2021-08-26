import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

void main() => runApp(Setup());

class Setup extends StatelessWidget {
  const Setup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  Map _countries = new Map();

  void _fetchData() async {
    var url = "http://country.io/names.json";
    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200) {
      setState(() {
        _countries = jsonDecode(response.body);
      });
      print("We loaded ${_countries.length} countries");
    } else {
      print("StatusCode : ${response.statusCode}");
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("World Countries",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _countries.length,
                itemBuilder: (BuildContext context, int index) {
                  var key = _countries.keys.elementAt(index);
                  return Row(
                    children: <Widget>[
                      Text("Country Code: $key"),
                      Text("Country Name: ${_countries[key]}")
                    ],
                  );
                }
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
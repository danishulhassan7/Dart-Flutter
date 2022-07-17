import 'package:flutter/material.dart';

void main () {
  return runApp(MusicVine(),);
}

class MusicVine extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 188, 53),
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
        ),
        body: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World App",
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World, Google Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Google for everyone", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              fontStyle: FontStyle.italic,
              color: Colors.blueGrey,
            ),),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


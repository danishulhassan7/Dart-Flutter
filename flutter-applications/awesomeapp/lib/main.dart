import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "AwesomeApp",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App (XPF)"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Text(
            "A small box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                // spreadRadius: 8,
                offset: Offset(2.0, 5.0),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
            color: Colors.teal[400],
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.purple]
              ),
          ),
        ),
      ),
    );
  }
}
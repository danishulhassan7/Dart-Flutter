import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Rows & Columns",
    home:RowCol(),
  ));
}

class RowCol extends StatelessWidget {
  const RowCol({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows & Columns")
      ),
      body: Row(
        children: <Widget> [
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
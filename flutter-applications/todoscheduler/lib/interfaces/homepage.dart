import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "XPFScheduler",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {},
        child: Icon(Icons.nightlight_round, size: 19, color: Colors.white),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 19,
          color: Colors.white,
        ),
        SizedBox(width: 15,)
      ],
    );
  }
}

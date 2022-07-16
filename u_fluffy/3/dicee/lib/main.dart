// import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 63, 30),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 19, 139, 81),
          title: const Center(child: Text('Dice App')),
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftCornerDice = 1;
  int rightCornerDice = 6;

  updateDice() {
    setState(() {
      leftCornerDice = Random().nextInt(6) + 1;
      rightCornerDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
              ),
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$leftCornerDice.png'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
              ),
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$rightCornerDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

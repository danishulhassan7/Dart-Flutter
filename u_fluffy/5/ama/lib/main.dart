import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmaMagicBall(),
    ),
  );
}

class AmaMagicBall extends StatefulWidget {
  const AmaMagicBall({Key? key}) : super(key: key);

  @override
  State<AmaMagicBall> createState() => _AmaMagicBallState();
}

class _AmaMagicBallState extends State<AmaMagicBall> {
  int amaBall = 1;

  updAmaBall() {
    setState(() {
      amaBall = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 132, 132),
      appBar: AppBar(
        title: const Center(child: Text('AMA Magic Ball')),
        backgroundColor: const Color.fromARGB(255, 3, 124, 112),
      ),
      body: Center(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                updAmaBall();
                print('Ball clicked!');
              },
              child: Image.asset('images/ball$amaBall.png'),
            ),
          ),
        ),
      ),
    );
  }
}

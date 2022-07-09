import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: const Center(child: Text('XPF Diamond')),
          backgroundColor: Colors.blue[900],
        ),
        body: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/diamond.png'),
              ),
            ),
            Text(
              'A rich man wishes for this - @xpf',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.blue[900]),
            ),
          ],
        ),
      ),
    ),
  );
}

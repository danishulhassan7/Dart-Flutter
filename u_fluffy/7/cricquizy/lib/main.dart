import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'CricQuizzy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 37, 35, 34),
        ),
        body: const CricQuizzy(),
      ),
    ),
  );
}

class CricQuizzy extends StatefulWidget {
  const CricQuizzy({Key? key}) : super(key: key);

  @override
  State<CricQuizzy> createState() => _CricQuizzyState();
}

class _CricQuizzyState extends State<CricQuizzy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 5,
          child:  Padding(
            padding: EdgeInsets.all(9.0),
            child: Center(
              child: Text(
                'Questions will ap sgb sg sdlifh sdgiob sdoihb sd subg sioubgf bg8re biuoergbbsodbh bbiov09rwgb',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 30, 150, 34),
                padding: const EdgeInsets.all(14.0),
              ) ,
              onPressed: () {},
              child: const Text(
                'True',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 207, 26, 16),
                padding: const EdgeInsets.all(14.0),
              ) ,
              onPressed: () {},
              child: const Text(
                'False',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

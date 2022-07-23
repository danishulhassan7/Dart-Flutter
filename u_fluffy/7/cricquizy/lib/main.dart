import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 248, 248),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(1.0),
            child: Center(
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
          ),
          backgroundColor: const Color.fromARGB(255, 43, 2, 69),
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
  List<Icon> displayingAns = [
    const Icon(
      Icons.check,
      color: Color.fromARGB(255, 30, 150, 34),
    ),
    const Icon(
      Icons.delete,
      color: Color.fromARGB(255, 207, 26, 16),
    ),
  ];

  List<String> cricQuesList = [
    'Australia was the first country to win 3 consecutive World Cups.',
    'Glenn McGrath has the highest number of wickets in the history of the World Cup.',
    'The first cricket World Cup was held in 1976.',
    'The 2019 World Cup is the 5th time that England have hosted.',
    'India are the only country to win the 20 overs, the 50 overs and 60 overs World Cup.',
    'To this day (30 May 2019) only 1 bowler has reached 100 mph.',
    'Australia has won the World Cup 6 times.',
    'Clive Lloyd of the West Indies is the only captain to win the World Cup twice.'
  ];

  List<bool> ansList = [true, true, false, true, true, true, false, false];

  int trackingQuesNo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Center(
              child: Text(
                cricQuesList[trackingQuesNo],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 43, 2, 69),
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 30, 150, 34),
                padding: const EdgeInsets.all(14.0),
              ),
              onPressed: () {
                bool correctAns = ansList[trackingQuesNo];
                if(correctAns == true) {
                  print('right');
                } else 
                {
                  print('wrong');
                }

                setState(() {
                  trackingQuesNo++;
                });
              },
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
            padding:
                const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 207, 26, 16),
                padding: const EdgeInsets.all(14.0),
              ),
              onPressed: () {
                bool correctAns = ansList[trackingQuesNo];
                if(correctAns == false) {
                  print('right');
                } else 
                {
                  print('wrong');
                }

                setState(() {
                  trackingQuesNo++;
                });
              },
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
        Row(
          children: displayingAns,
        ),
      ],
    );
  }
}

// 1. Australia was the first country to win 3 consecutive World Cups. 'True'
// 2. Glenn McGrath has the highest number of wickets in the history of the World Cup. 'True'
// 3. The first cricket World Cup was held in 1976. 'False'
// 4. The 2019 World Cup is the 5th time that England have hosted. 'True'
// 5. India are the only country to win the 20 overs, the 50 overs and 60 overs World Cup. 'True'
// 6. To this day (30 May 2019) only 1 bowler has reached 100 mph. 'True'
// 7. Australia has won the World Cup 6 times. 'False'
// 8. Clive Lloyd of the West Indies is the only captain to win the World Cup twice. 'False'

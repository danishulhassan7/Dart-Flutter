import 'dart:html';
import 'dart:math';

import 'package:bmi_calc/widgets/icon_content.dart';
import 'package:bmi_calc/widgets/measure_content.dart';
import 'package:bmi_calc/widgets/reusable_cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 0 for male and 1 for female
  int selectedGender = 0;
  int height = 140;
  int weight = 55;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple[900],
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // For Gender Boxes
        Row(children: [
          // Card  # 01
          ReusbaleCard(
              onPress: () {
                setState(() {
                  selectedGender = 0;
                });
              },
              cardChild: IconContent(
                icon: Icons.male,
                title: "MALE",
                active: selectedGender == 0,
              )),
          // Card  # 02
          ReusbaleCard(
            onPress: () {
              setState(() {
                selectedGender = 1;
              });
            },
            cardChild: IconContent(
              icon: Icons.female,
              title: "FEMALE",
              active: selectedGender == 1,
            ),
          )
        ]),

        // For Measurement Boxes
        Row(children: [
          // Box-1
          ReusbaleCard(
              onPress: () {},
              cardChild: MeasureContent(
                  title: "Weight",
                  measure: weight,
                  unit: "kg",
                  increment: () {
                    setState(() {
                      weight++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      weight--;
                    });
                  })),
          // Box-2
          ReusbaleCard(
              onPress: () {},
              cardChild: MeasureContent(
                  title: "Height",
                  measure: height,
                  unit: "cm",
                  increment: () {
                    setState(() {
                      height++;
                    });
                  },
                  decrement: () {
                    setState(() {
                      height--;
                    });
                  })),
        ]),
        //For Calculation
        GestureDetector(
          onTap: () {
            double bmi = weight / pow(height/100, 2);
            String bmiString = bmi.toStringAsFixed(2);
            print(bmiString);
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                backgroundColor: Colors.deepPurple[700],
                title: Text("Your BMI is :  $bmiString",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                ),
                actions: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close, color: Colors.red, size: 30,))
                ],
              );
            });
          },
          child: Container(
            width: double.infinity,
            color: Colors.red,
            height: 80,
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

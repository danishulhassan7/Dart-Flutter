import 'package:bmi_calc/widgets/icon_content.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
          ReusbaleCard(onPress: () {}, cardChild: Text("")),
          ReusbaleCard(onPress: () {}, cardChild: Text("")),

        ]),
        //For Calculation
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
            width: double.infinity,
            color: Colors.red,
            height: 80,
            child: Center(
              child: Text("CALCULATE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27,
                color: Colors.white
              ),),
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:bmi_calc/widgets/roundbtn.dart';
import 'package:flutter/material.dart';

class MeasureContent extends StatelessWidget {
  const MeasureContent(
      {Key? key,
      required this.title,
      required this.measure,
      required this.unit,
      required this.increment,
      required this.decrement})
      : super(key: key);

  final String title;
  final int measure;
  final String unit;
  final void Function() increment;
  final void Function() decrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Row(
          children: [
            Text(measure.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),),
            Text(unit)
          ],
        ),
        Row(
          children: [
            RoundBtn(onPress: decrement, txt: "-"),
            RoundBtn(onPress: increment, txt: "+"),
          ],
        ),
      ],
    );
  }
}

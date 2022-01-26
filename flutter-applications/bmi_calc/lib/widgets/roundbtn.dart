import 'package:flutter/material.dart';

class RoundBtn extends StatelessWidget {
  const RoundBtn({Key? key, required this.onPress, required this.txt}) : super(key: key);

  final void Function() onPress;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(3),
        height: 23,
        width: 23,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11), color: Colors.yellow[800]),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

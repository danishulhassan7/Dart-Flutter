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
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.yellow[800]),
        child: Text(
          txt,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}

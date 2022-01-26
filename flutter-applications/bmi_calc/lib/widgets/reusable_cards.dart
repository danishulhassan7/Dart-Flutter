import 'package:flutter/material.dart';

class ReusbaleCard extends StatelessWidget {
  const ReusbaleCard({Key? key, required this.onPress, required this.cardChild}) : super(key: key);

  final Widget cardChild;
  final void Function() onPress; 

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: Colors.deepPurple[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child: cardChild,
      ),
    ));
  }
}

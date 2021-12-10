import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customcolors.dart' as clr;






class PlayList extends StatefulWidget {
  const PlayList({ Key? key }) : super(key: key);

  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              clr.AppColor.gradientFirst.withOpacity(0.8),
              clr.AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
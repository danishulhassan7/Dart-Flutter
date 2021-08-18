import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("gg.png",
                 fit: BoxFit.cover,
                 height: 300);
  }
}
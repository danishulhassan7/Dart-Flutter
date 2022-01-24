import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 19,
                top: 60,
                child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                Expanded(child: Container()),
                IconButton(onPressed: (){}, icon: Icon(Icons.tag)),

              ],
            ))
          ],
        ),
      ),
    );
  }
}

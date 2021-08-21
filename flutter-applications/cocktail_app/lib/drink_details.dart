import 'package:flutter/material.dart';

class DrinkDetails extends StatelessWidget {
  const DrinkDetails({ Key? key, @required this.drink }) : super(key: key);

  final drink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(drink["strDrink"]),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage("${drink["strDrinkThumb"]}"),
                  ),
                ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("ID: ${drink["idDrink"]}",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("${drink["strDrink"]}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:cocktail_app/drink_details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var api = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var response, drinks;

  @override
void initState() { 
  super.initState();  
  fetchData();
}

  fetchData() async {
    response = await http.get(Uri.parse(api));
    drinks = jsonDecode(response.body)["drinks"];
    print(drinks.toString());
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Cocktail App"),
        elevation: 0.0,
      ),
      body: Center(
        child: response != null?
         ListView.builder(
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            var drink = drinks[index];
            return ListTile(
              title: Text("${drink["strDrink"]}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            leading: Hero(
              tag: drink["idDrink"],
              child: CircleAvatar(
                backgroundImage: NetworkImage("${drink["strDrinkThumb"]}"),
              ),
            ),
            subtitle: Text("${drink["idDrink"]}",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),

            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DrinkDetails(drink: drink)));
            },
            );
          }
          )
          :CircularProgressIndicator(
            color: Colors.white,
          ),
      ),
    );
  }
}
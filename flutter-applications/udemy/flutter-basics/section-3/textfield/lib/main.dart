import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Input Text Field in Google Flutter",
      home: InputTextField(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
    ),
  );
}

class InputTextField extends StatefulWidget {
  const InputTextField({ Key? key }) : super(key: key);

  @override
  _InputTextFieldState createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {

  String _str = '';

  void _onChange(String str) {
    setState(() {
      _str = "Name is: $str";
    });
  }

  void _onSubmit(String str) {
    setState(() {
      _str = "Full Name: $str";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Text(_str),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  hintText: "Enter your name",
                  icon: Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
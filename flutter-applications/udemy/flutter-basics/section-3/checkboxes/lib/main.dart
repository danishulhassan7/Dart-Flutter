 import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Checkboxes in Google Flutter",
      home: InputTextField(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
    ),
  )
  );
}

class InputTextField extends StatefulWidget {
  const InputTextField({ Key? key }) : super(key: key);

  @override
  _InputTextFieldState createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {

  bool _val1 = false;
  bool _val2 = false;

_valchanged1(bool value) => setState(()=> _val1 = value );
_valchanged2(bool value) => setState(()=> _val2 = value );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkboxes"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Checkbox(
                value: _val1,
                 onChanged: _valchanged1(_val1),
                 activeColor: Colors.yellow,
                 ),
              CheckboxListTile(
                value: _val2, 
                onChanged: _valchanged2(_val2),
                title: Text("Cricket"),
                subtitle: Text("Life"),
                activeColor: Colors.green,
                secondary: Icon(Icons.archive),
                controlAffinity: ListTileControlAffinity.leading,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
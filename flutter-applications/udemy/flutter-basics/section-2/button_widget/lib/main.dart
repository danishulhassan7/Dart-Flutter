import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Button Widgets",
      home: ButtonWidget(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    ),
  );
}

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({ Key? key }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {

  String _str = "Google Flutter";

  void _pressBtn(String str) {
    setState(() {
      _str = str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("Button Widgets"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text("Different Button Widgets in Google Flutter", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black           ),),
            ),
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_str,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
                ),
                // RaisedButton(onPressed: (){}, child: Text("Hell-1"),),
                // FlatButton(onPressed: (){},child: Text("Hell-2"),),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(onPressed: () {
                  _pressBtn("Flutter is BEST");
                }, 
                child: Text("Change ME"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_str,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(
                  width: 20,
                ),
                // IconButton(
                //   onPressed: () {},
                //    icon: Icon(Icons.remove)
                //    ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
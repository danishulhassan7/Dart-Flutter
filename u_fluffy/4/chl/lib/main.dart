import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Box1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.black26,
                          child: Center(
                            child: Text(
                            'Box3',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.black38,
                          child: Center(
                            child: Text(
                            'Box4',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Box2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

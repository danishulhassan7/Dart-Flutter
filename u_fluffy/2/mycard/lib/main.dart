import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyInfo(),
    ),
  );
}

class MyInfo extends StatelessWidget {
  const MyInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 3, 53),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/bg.png'),
                radius: 45.0,
              ),
              Text(
                'Danish Ul Hassan',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 1.9,
                ),
              ),
              SizedBox(
                height: 22.0,
                width: 145.0,
                child: Divider(
                  color: Color.fromARGB(255, 139, 25, 159),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 22.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 66, 22, 142),
                      size: 22.0,
                    ),
                    title: Text(
                      'danishulhassan7@gmail.com',
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 22, 142),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 22.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 66, 22, 142),
                      size: 22.0,
                    ),
                    title: Text(
                      '+92 308 2157 220',
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 22, 142),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
                            Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 22.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.link_rounded,
                      color: Color.fromARGB(255, 66, 22, 142),
                      size: 22.0,
                    ),
                    title: Text(
                      'danishulhassan7 (GitHub)',
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 22, 142),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
                            Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 22.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.dataset_linked_outlined,
                      color: Color.fromARGB(255, 66, 22, 142),
                      size: 22.0,
                    ),
                    title: Text(
                      'danishulhassan7 (LinkedIn)',
                      style: TextStyle(
                        color: Color.fromARGB(255, 66, 22, 142),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

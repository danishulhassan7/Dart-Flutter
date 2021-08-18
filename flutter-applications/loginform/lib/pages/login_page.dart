import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to your account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter your username",
                            labelText: "Username"
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                         TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter your password",
                            labelText: "Password"
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: (){},
                           child: Text("Login"),
                             style: ElevatedButton.styleFrom(
    primary: Colors.red, // background
    onPrimary: Colors.white, // foreground
  ),
                           ),
                      ],
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
import 'package:flutter/material.dart';
  
  void main() => runApp(MyApp());
  
  class MyApp extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Snackbar Notifier in Google Flutter',
        home: _SnackBarAppExample(),
        theme: ThemeData(
          snackBarTheme: SnackBarThemeData(
            backgroundColor: Colors.teal,
            actionTextColor: Colors.white,
            disabledActionTextColor: Colors.grey,
            contentTextStyle: TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            behavior: SnackBarBehavior.floating,
          )
        ),
      );
    }
  }
  
  class _SnackBarAppExample extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Snackbar Notifier'),
          backgroundColor: Colors.green,
        ),
        body: _MySnackBar(),
      );
    }
  }
  
  class _MySnackBar extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      final _snackBar1 = SnackBar(
        content: Text('Simple Snackabr'),
      );
  
      final _snackBar2 = SnackBar(
        content: Text('Fancy Snackbar'),
        duration: const Duration(seconds: 10),
        action: SnackBarAction(
          label:'Click',
          onPressed: () {
            print('Action is clicked');
          },
          textColor: Colors.white,
          disabledTextColor: Colors.grey,
        ),
          onVisible: () {
            print('Snackbar is visible');
          },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(15.0),
      );
  
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Show SnackBar 1'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar1);
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text('Show SnackBar 2'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar2);
              },
            )
          ],
        )
      );
    }
  }
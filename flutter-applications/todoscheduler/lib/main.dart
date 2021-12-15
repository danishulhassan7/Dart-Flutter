import 'package:flutter/material.dart';
import 'package:todoscheduler/interfaces/homepage.dart';
import 'package:todoscheduler/interfaces/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XPFScheduler',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}




import 'package:cards_stful/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    title: "My First Card in Flutter",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}


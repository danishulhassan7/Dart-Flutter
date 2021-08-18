

import 'dart:js';

import 'package:cards_stful/drawer_card.dart';
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
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => DrawerApp(),
    },
  ));
}


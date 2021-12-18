import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowishClr = Color(0xFFFFB746);
const Color pinkishClr = Color(0xFFff4667);
const Color grayishClr = Color(0xFF121212);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final lightTheme = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    backgroundColor: grayishClr,
    primaryColor: darkHeaderClr,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyling {
  return GoogleFonts.lato (
    textStyle: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.grey[500] : Colors.grey
    ),
  );
}

TextStyle get headingStyling {
  return GoogleFonts.lato (
    textStyle: TextStyle(
      fontSize: 29,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white: Colors.black 
    ),
  );
}
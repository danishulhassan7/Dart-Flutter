

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final _box = GetStorage();
  final _key = "isDarkTheme";

  _saveThemeData(bool isDarkTheme)=> _box.write(_key, isDarkTheme);
  bool _gettingThemeValuefromBox() => _box.read(_key) ?? false;
  ThemeMode get theme => _gettingThemeValuefromBox() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    Get.changeThemeMode(_gettingThemeValuefromBox() ? ThemeMode.light: ThemeMode.dark);
    _saveThemeData(!_gettingThemeValuefromBox());
  }
}
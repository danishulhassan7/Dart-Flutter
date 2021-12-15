import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todoscheduler/interfaces/homepage.dart';
import 'package:todoscheduler/interfaces/themes.dart';
import 'package:todoscheduler/services/theme_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
      themeMode: ThemeServices().theme,
      home: HomePage(),
    );
  }
}


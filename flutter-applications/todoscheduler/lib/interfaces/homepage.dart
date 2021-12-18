import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoscheduler/services/notifier_services.dart';
import 'package:todoscheduler/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifier;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifier = Notifier();
    notifier.initializeNotification();
    notifier.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "XPFScheduler",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeServices().switchTheme();

          notifier.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Light Theme Activated"
                  : "Dark Theme Activated");

          notifier.scheduledNotification();
        },
        child: Icon(Get.isDarkMode ? Icons.wb_sunny_outlined: Icons.nightlight_round_outlined , size: 19, color: Get.isDarkMode ? Colors.white : Colors.black ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 19,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

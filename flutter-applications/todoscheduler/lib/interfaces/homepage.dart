import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todoscheduler/interfaces/addtask_page.dart';
import 'package:todoscheduler/interfaces/themes.dart';
import 'package:todoscheduler/interfaces/widgets/buttons.dart';
import 'package:todoscheduler/services/notifier_services.dart';
import 'package:todoscheduler/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _selectedDate = DateTime.now();
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
          _addTask(),
          _dateBar(),
        ],
      ),
    );
  }

  _dateBar() {
    return Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: primaryClr,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
              dayTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              monthTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              onDateChange: (date) {
                _selectedDate = date;
              },
            ),
          );
  }

  _addTask() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: subHeadingStyling,
                ),
                Text(
                  "Todayy",
                  style: headingStyling,
                )
              ],
            ),
          ),
          CustomButton(label: "+ Add Task", onTap: () { Get.to(AddTaskPage());})
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
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
        child: Icon(
            Get.isDarkMode
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_round_outlined,
            size: 19,
            color: Get.isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage("images/upd-1.png"),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

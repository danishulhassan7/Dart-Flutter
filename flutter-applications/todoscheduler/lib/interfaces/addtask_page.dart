import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoscheduler/interfaces/themes.dart';
import 'package:todoscheduler/interfaces/widgets/inputfields.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {

  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right:20, top:10, bottom:10,),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Text("Add Task",
              style: headingStyling,),
              CustomInputField(title: "Title", hint: "Enter your title"),
              CustomInputField(title: "Note", hint: "Add your note"),

            ],
          ),
        ),
      ),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Icon(Icons.arrow_back_ios_new_outlined,
            size: 19,
            color: Get.isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage("images/dp.png"),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

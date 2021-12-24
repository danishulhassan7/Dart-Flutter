
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:todoscheduler/db/db_helper.dart';
import 'package:todoscheduler/models/tasks.dart';

class TaskController extends GetxController {

  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Tasks? tasks}) async {
    return await DBHelper.insert(tasks);
  }
  
}
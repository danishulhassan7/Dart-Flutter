import 'package:sqflite/sqflite.dart';
import 'package:todoscheduler/models/tasks.dart';

class DBHelper {
  static Database? _db;
  static final int _version =1;
  static final String _tableName = "tasks";

  static Future<void> initDb() async {
    if(_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          print("Creating a new DataBase");
          return db.execute(
            "CREATE TABLE $_tableName("
            "id INTEGER PRIMARY KEY AUTOICREMENT,"
            "title STRING, note TEXT, date STRING, "
            "startTime STRING, endTime STRING, "
            "remind INTEGER, repeat STRING ,"
            "color INTEGER, "
            "isCompleted INTEGER)",
          );
    },
      );

  } catch (e) {
    print(e);
  }
  }

  //insert Database method

  static Future<int> insert(Tasks? tasks) async {
    print("The insert function is trigerred !!");
    return await _db?.insert(_tableName, tasks!.toJson()) ?? 1;
  }
}
import 'dart:async';

import 'package:bloodpress_mgmt/models/bp_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "bp_mgmt";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String databasePath = await getDatabasesPath();
      String _path = join(databasePath, _tableName + ".db");
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: _onCreate,
      );

    } catch (e) {
      print(e);
    }
  }

  static FutureOr<void> _onCreate(Database db, int version) {
    String sql = "CREATE TABLE $_tableName("
      "id INTEGER PRIMARY KEY AUTOINCREMENT, "
      "input_date DATETIME, " //-- 측정일자
      "diastolic_bp INTEGER, " // -- 이완기 혈압
      "systolic_bp INTEGER, " // -- 수축기 혈압
      "heart_rate INTEGER, " // -- 심박수
      "weight REAL)" // -- 체중
        ;
    return db.execute(sql);
  }

  static FutureOr<int> insert(BloodPressure? bp) async {
    print("insert function called!");
    return await _db?.insert(_tableName, bp!.toJson()) ?? 1;
  }

  static FutureOr<List<Map<String, dynamic>>> query(int id) async {
    return _db!.query(_tableName, where: "id = ?", whereArgs: [id]);
  }

  static FutureOr<List<Map<String, dynamic>>> queryByDate(String queryDate) async {
    return _db!.query(
        _tableName,
        where: "input_date between to_date(?, 'yyyymmdd') and to_date(?, 'yyyymmdd') - 6",
        whereArgs: [queryDate, queryDate]
    );
  }
}
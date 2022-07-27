import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class DBHelper {
  static String tableName = 'user_activities';
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    const DB_VERSION = 1;
    final String query =
        'CREATE TABLE $tableName(id TEXT PRIMARY KEY, name TEXT, time TEXT, reminder TEXT, category TEXT, note TEXT)';
    return sql.openDatabase(
      path.join(dbPath, 'activity.db'),
      onCreate: (db, version) => db.execute(query),
      version: DB_VERSION,
    );
  }

  ///insert activity data to SQLLite
  static Future<void> insert(String table, Map<String, dynamic> data) async {
    final db = await DBHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String,dynamic>>> getData(String table) async{
    final db = await DBHelper.database();
    return db.query(table);
  }
}

import 'package:sqflite/sqflite.dart';

import 'DatabaseHelper.dart';

class DBData {
  static Future<List<Map<String, dynamic>>> Select(String TableName,
      {String Where = "none",
      String Order = "none",
      List<dynamic> WhereArgs = const ['']}) async {
    Database db = await DatabaseHelper.instance.database;

    if (Where != 'none' && Order == 'none') {
      return await db.query(TableName, where: Where, whereArgs: WhereArgs);
    } else if (Where != 'none' && Order != 'none') {
      return await db.query(TableName,
          where: Where, whereArgs: WhereArgs, orderBy: Order);
    } else if (Where == 'none' && Order != 'none') {
      return await db.query(TableName, orderBy: Order);
    } else {
      return await db.query(TableName);
    }
  }

  static Future<int> Delete(String TableName,
      {String Where = "none", List<dynamic> WhereArgs = const ['']}) async {
    Database db = await DatabaseHelper.instance.database;

    if (Where != 'none') {
      return await db.delete(TableName, where: Where, whereArgs: WhereArgs);
    } else {
      return await db.delete(TableName);
    }
  }

  static CustomQuery(String Query) async {
    Database db = await DatabaseHelper.instance.database;

    await db.rawQuery(Query);
  }
}

import 'package:hypercv/models/TableColumn.dart';
import 'package:sqflite/sqflite.dart';

import 'DatabaseHelper.dart';
import 'TablesStructures.dart';

class CreateAndUpdate {
  static List<String> tables = ["Products", "barcodes", "counter"];
  static List<List<TableColumn>> TablesColumns = [
    TablesStructures.ProductsColums,
    TablesStructures.barcodesColums,
    TablesStructures.counterColums
  ];

  static onCreate() async {
    Database db = await DatabaseHelper.instance.database;
    for (String t in tables) {
      print("DROP TABLE IF EXISTS $t");
      await db.execute('DROP TABLE IF EXISTS $t');
    }
    for (int i = 0; i < tables.length; i++) {
      await db.execute(BuildCreateQuery(tables[i], TablesColumns[i]));
    }
  }

  static BuildCreateQuery(TableName, List<TableColumn> Tc) {
    String Qry = ' CREATE TABLE $TableName (';

    for (int i = 0; i < Tc.length; i++) {
      Qry += (Tc[i].Name + ' ' + Tc[i].Type);
      if (i != Tc.length - 1) Qry += ',';
    }

    Qry += ')';

    return Qry;
  }
}

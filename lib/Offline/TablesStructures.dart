import '../models/TableColumn.dart';

class TablesStructures {
  static List<TableColumn> ProductsColums = [
    TableColumn('REF_NO', 'TEXT'),
    TableColumn('ModelNumber', 'TEXT'),
    TableColumn('ModelName', 'TEXT')
  ];
  static List<TableColumn> barcodesColums = [
    TableColumn('ModelNumber', 'TEXT'),
    TableColumn('isNew', 'BOOLEAN'),
    TableColumn('REF_NO', 'TEXT')
  ];
  static List<TableColumn> counterColums = [
    TableColumn('QTY', 'INTEGER'),
    TableColumn('REF_NO', 'TEXT'),
    TableColumn('isNew', 'BOOLEAN'),
    TableColumn('ModelNumber', 'TEXT')
  ];
}

import 'package:sqflite/sqflite.dart' as sql;

class SqlHelper {
  static Future<sql.Database> db() async {
    return sql.openDatabase("Mydatabase.db", version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute(
        """CREATE TABLE items(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, description TEXT,)""");
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SqlHelper.db();
    return db.query("items", orderBy: "id");
  }
}

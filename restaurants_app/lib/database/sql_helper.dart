import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createCustomerTables(sql.Database database) async {
    await database.execute("""
  CREATE TABLE customerInfo(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    number TEXT,
    email TEXT,
    address TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  )
""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'myDataBase.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        print('... Creating a table...');
        await createCustomerTables(database);
      },
    );
  }

  //Create Items
  static Future<int> createItem(String name,String number, String? email, String? address) async {
    final db = await SQLHelper.db();
    final data = {'name': name, 'number': number, 'email': email, 'address':address};
    final id = await db.insert('customerInfo', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('customerInfo', orderBy: 'id');
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('customerInfo', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem( int id, String name,String number, String? email, String? address)async{
    final db = await SQLHelper.db();
    final data = {
      'name': name, 
      'number': number, 
      'email': email, 
      'address':address,
      'createdAt': DateTime.now().toString()
    };

    final result = await db.update('customerInfo', data, where: "id = ?",whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try{
      await db.delete("customerInfo", where: "id = ?", whereArgs: [id]);
    }catch(err){
      debugPrint('Something went wrong when deleting an item: $err');
    }
  }



}

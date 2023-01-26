import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:restaurants_app/database/createCustomerModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'customerinfo.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute("""
        CREATE TABLE customerinfo(
          id INTEGER PRIMARY KEY,
          name TEXT,
          mobile TEXT,
          email TEXT,
          address TEXT
          )""");
  }

  //Create customer items
  Future<int> addCustomer(CustomersModel customersModel) async {
    Database db = await instance.database;
    return await db.insert("customerinfo", CustomersModel().toJson());
  }
}

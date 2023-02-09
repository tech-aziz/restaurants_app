import 'dart:async';
import 'package:restaurants_app/model/customer_model.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ?? await initDatabase();

  Future<Database> initDatabase() async {
    Directory documentdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentdirectory.path, 'customer.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute("""
    CREATE TABLE customer(
      id INTEGER PRIMARY KEY,
      name Text
    );
""");
  }

  Future<List<Customer>> getCustomer() async {
    Database db = await instance.database;
    var customer = await db.query('customer', orderBy: 'name');
    List<Customer> customerList = customer.isNotEmpty
        ? customer.map((e) => Customer.fromMap(e)).toList()
        : [];
    return customerList;
  }

  Future<int> add(Customer customer) async {
    Database db = await instance.database;
    return await db.insert('customer', customer.toMap());
  }
}

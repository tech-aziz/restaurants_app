
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_migration/sqflite_migration.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import 'sql_scripts.dart';

class InitDatabase {
  List<String> initialScript = [
    SqlScripts.createItemInfoTable,
    SqlScripts.createEmployeeInfoTable,
    SqlScripts.createCategoryInfoTable,
    SqlScripts.createOtherInfoTable,
    SqlScripts.createSalesInfoTable,
    SqlScripts.createSaleItemDetailsTable,
    SqlScripts.createHoldOrderTable,
    SqlScripts.createHoldOrderItemDetailsTable,
    SqlScripts.createCustomerInfoTable,
    SqlScripts.createTableInfoTable,
    SqlScripts.createDineInOrderTable,
    SqlScripts.createDineInOrderItemDetailsTable,
    SqlScripts.createDeskInfoTable,
  ];

  /// Add SQL Query into the list for database changes
  List<String> migrationScript = [
    SqlScripts.createPaymentMethodInfoTable,
  ];

  Future<Database> open() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'msdsl_restaurant_pos.db');

    final config = MigrationConfig(
        initializationScript: initialScript, migrationScripts: migrationScript);

    return await openDatabaseWithMigration(path, config);
  }

  //set or insert category data to database
  // Future insertCategoryData(AddCategoryModel addCategoryModel) async {
  //   Database? database = await open();
  //   return await database.insert(
  //       'createCategoryInfoTable', AddCategoryModel().toJson());
  // }

  //get category data to database
  // Future<List<AddCategoryModel>?> getCategoryModel() async {
  //   Database? database = await open();
  //   var data = await database.query(
  //     "createCategoryInfoTable",
  //     orderBy: "id",
  //   );
  //   List<AddCategoryModel> categoryModel =
  //       data.map((e) => AddCategoryModel.fromJson(e)).toList();
  //   return categoryModel;
  // }
}

// import 'package:restaurants_app/view/screens/setup/category.dart';
// import 'package:sqflite/sqflite.dart';

// import '../model/add_category_model.dart';

// class DBHelper{
//   static Database ? _db;
//   static final int _version = 1;
//   static final String _tableName = "category";

//   static Future<void> initDb() async{
//     if(_db != null){
//       return;
//     }
//     try{
//       String _path = await getDatabasesPath() + 'category.db';
//       _db = await openDatabase(
//         _path,
//         version: _version,
//         onCreate: (db, version) {
//           print('creating a new one');
//           return db.execute("""
//               "CREATE TABLE $_tableName(
//               id INTEGER PRIMARY KEY AUTOINCREMENT,
//               categoryName TEXT, 
//               shortName TEXT
//               );
//             """          
//           );
//         },
//       );
//     } catch(e){
//       print(e);
//     }
//   }

//   static Future<int> insert(AddCategory? addCategory) async{
//     print('insert function called');
//     return await _db?.insert(_tableName, addCategory!.toJson())??1;
//   }
// }


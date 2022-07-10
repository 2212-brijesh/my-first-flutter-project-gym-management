import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:gym_management/DatabaseHandler/databasehelper.dart';
import 'package:gym_management/Model/model.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'usersix.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE usersix(number INTEGER PRIMARY KEY AUTOINCREMENT,gymname TEXT,email TEXT,password TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertUser(List<User> users) async {
    int result = 0;
    final Database db = await initializeDB();
    for (var user in users) {
      result = await db.insert('usersix', user.toMap());
    }
    return result;
  }

  Future<List<User>> retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('usersix');
    return queryResult.map((e) => User.fromMap(e)).toList();
  }
}

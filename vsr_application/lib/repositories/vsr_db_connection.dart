import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'vsr_database');
    var database =
        await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);

    return database;
  }

  _onCreatingDatabase(Database database, int version) async {
    await database.execute(
        "CREATE TABLE users(nombre TEXT, apellido_p TEXT, apellido_m TEXT)");
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await setDatabase();
    return await db.insert('users', user);
  }
}

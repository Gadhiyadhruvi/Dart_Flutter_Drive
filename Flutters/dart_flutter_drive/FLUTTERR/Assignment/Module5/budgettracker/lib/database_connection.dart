import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path,"budget_expense");
   var database = openDatabase(path,version: 1,onCreate: createDatabase);
    return database;
  }
  Future<void>createDatabase(Database database,int version) async {
    print("Database create");
    String sql = "create table mybudget (id INTEGER PRIMARY KEY autoincrement ,month TEXT , amount integer,created_at text)";
     await database.execute(sql );

     String sql2 ="create table myexpense (id INTEGER PRIMARY KEY autoincrement ,month TEXT , amount integer,title TEXT,created_at text)";
    await database.execute(sql2);

     String sql3 ="create table mytransaction (id INTEGER PRIMARY KEY autoincrement , amount integer,title TEXT,type text)";
    await database.execute(sql3);
     }
     
     }

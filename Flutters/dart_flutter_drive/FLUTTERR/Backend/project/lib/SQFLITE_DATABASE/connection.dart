import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path,"mydb");
    var database = openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }
   Future<void> createDatabase(Database database,int version) async {
    String sql = 
           "create table mytable (id INTEGER PRIMART KEY, name TEXT, contect TEXT)";
           database.execute(sql);
   }

}
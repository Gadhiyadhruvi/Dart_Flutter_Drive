import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import 'connection.dart';
import 'package:sqflite/sqflite_dev.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  insertData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    return await connection!.query(table);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: "id = ?", whereArgs: [data["id"]]);
  }

  deleteData(table, itemid) async {
    var connection = await database;
    return await connection!.delete(table, where: "id = ?", whereArgs: itemid);
  }
}

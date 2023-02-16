import 'package:project3/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection databaseConnection;

  Repository(){
    databaseConnection = DatabaseConnection();
  }

  static Database? _database;

  Future<Database?> get database async{
    if(_database != null){
      return _database;
    }else{
      _database = await databaseConnection.setDatabase();
      return _database;
    }
  }

   insertExpense(table,data)async{
    var connection = await database;
    return await connection?.insert(table, data);
  }

  insertBudget(table,data)async{
    var connection = await database;
    return await connection?.insert(table, data);
  }
  insertTransaction(table,data)async{
    var connection = await database;
    return await connection?.insert(table, data);
  }
  selectMyExpense(table)async{
    var connection = await database;
    return await connection?.rawQuery("select* from $table");
  }
  selectMyBudget(table)async{
    var connection = await database;
    return await connection?.rawQuery("select* from $table");
  }
   selectMyTransaction(table)async{
    var connection = await database;
    return await connection?.rawQuery("select* from $table");
  }

  deleteEntryFromExpense(table,itemID) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $table WHERE id = ?",[itemID]);
  }
  deleteEntryFromBudget(table,itemID) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $table WHERE id = ?",[itemID]);
  }
   deleteEntryFromTransaction(table,itemID) async {
    var connection = await database;
    return await connection?.rawDelete("DELETE FROM $table WHERE id = ?",[itemID]);
  }
   fetchEntryBytitle(table,titlename)async{
    var connection = await database;
    return await connection?.query(table,
    columns: ['id','amount','month','title'],
    where: 'title = ?',
    whereArgs: [titlename]
    );
   }
   
   fetchEntryByMonth(table,monthname)async{
    var connection = await database;
    return await connection?.query(table,
    columns: ['id','amount','month'],
    where: 'month = ?',
    whereArgs: [monthname]
    );
   }
   fetchEntryByType(table,typename)async{
    var connection = await database;
    return await connection?.query(table,
    columns: ['id','amount','title','type'],
    where: 'type = ?',
    whereArgs: [typename]
    );
   }

  
  
 
}
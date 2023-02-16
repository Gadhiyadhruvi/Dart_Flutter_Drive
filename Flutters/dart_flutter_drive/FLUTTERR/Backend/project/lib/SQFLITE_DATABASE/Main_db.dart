import 'package:flutter/material.dart';
import 'package:project/SQFLITE_DATABASE/User.dart';
import 'package:project/SQFLITE_DATABASE/add_user.dart';

class MyMainDB extends StatefulWidget {
  const MyMainDB({super.key});

  @override
  State<MyMainDB> createState() => _MyMainDBState();
}

class _MyMainDBState extends State<MyMainDB> {
  late List<User> userlist = <User>[];
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Database"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: ((context, index) {
          return Card(
            child: ListTile(
              title: Text("My Name"),
              subtitle: Text("contact"),
              trailing: Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Row(children: [
                    Container(
                      width: 60,
                      child: ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.edit)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      child: ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.delete)),
                    ),
                  ]),
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => AddUser())));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,
      ),
    );
  }
}

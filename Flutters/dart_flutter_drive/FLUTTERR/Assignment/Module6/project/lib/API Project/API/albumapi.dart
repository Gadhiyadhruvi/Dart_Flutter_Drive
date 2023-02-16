import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project/API%20Project/API/albumapi.dart';
import 'package:project/API%20Project/Model/Commentmodel.dart';
import 'package:http/http.dart' as http;
import 'package:project/API%20Project/Model/albummodel.dart';

class Album_API extends StatefulWidget {
  const Album_API({super.key});

  @override
  State<Album_API> createState() => _Album_APIState();
}

Future<List<AlbumModel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    List myJsonResponse = jsonDecode(response.body);
    return myJsonResponse.map((data) => new AlbumModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album ');
  }
}

class _Album_APIState extends State<Album_API> {
  late Future<List<AlbumModel>> myfuturelist;

  @override
  void initState() {
    super.initState();
    myfuturelist = fetchData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(" Album API"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Album_API()));
                    },
                    icon: Icon(Icons.navigate_next))
              ],
            ),
            body: Container(
                child: FutureBuilder<List<AlbumModel>>(
                    future: myfuturelist,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<AlbumModel> mylist = snapshot.data!;

                        return ListView.builder(
                            itemCount: mylist.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    print(" =======>${mylist[index].id}");
                                  },
                                  child: Column(children: [
                                    Text(
                                      mylist[index].title,
                                      style:
                                          TextStyle(color: Colors.amberAccent),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ]));
                            });
                      } else if (snapshot.hasError) {}
                      return CircularProgressIndicator();
                    }))));
  }
}

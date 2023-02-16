import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/API%20Project/API/albumapi.dart';
import 'package:project/API%20Project/Model/Commentmodel.dart';
import 'package:http/http.dart' as http;

class Comment_API extends StatefulWidget {
  const Comment_API({super.key});

  @override
  State<Comment_API> createState() => _Comment_APIState();
}

Future<List<CommentModel>> fetchData() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
  if (response.statusCode == 200) {
    List myJsonResponse = jsonDecode(response.body);
    return myJsonResponse
        .map((data) => new CommentModel.fromJson(data))
        .toList();
  } else {
    throw Exception('Failed to load album ');
  }
}

class _Comment_APIState extends State<Comment_API> {
  late Future<List<CommentModel>> myfuturelist;

  @override
  void initState() {
    super.initState();
    myfuturelist = fetchData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(" CommentAPI"),
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
                child: FutureBuilder<List<CommentModel>>(
                    future: myfuturelist,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<CommentModel> mylist = snapshot.data!;

                        return ListView.builder(
                            itemCount: mylist.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    print(" =======>${mylist[index].id}");
                                  },
                                  child: Column(children: [
                                    Text(
                                      mylist[index].name,
                                      style:
                                          TextStyle(color: Colors.amberAccent),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      mylist[index].email,
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(mylist[index].body),
                                  ]));
                            });
                      } else if (snapshot.hasError) {}
                      return CircularProgressIndicator();
                    }))));
  }
}

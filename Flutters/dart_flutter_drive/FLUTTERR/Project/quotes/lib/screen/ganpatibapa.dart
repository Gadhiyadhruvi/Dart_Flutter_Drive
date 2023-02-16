import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:quotes/Model/qote.dart';

class Quotes_Page extends StatefulWidget {
  const Quotes_Page({super.key});

  @override
  State<Quotes_Page> createState() => _Quotes_PageState();
}

class _Quotes_PageState extends State<Quotes_Page> {
  Future<quate> getdataapi() async {
    final Response = await http.get(Uri.parse('https://dummyjson.com/quotes'));
    var data = jsonDecode(Response.body.toString());
    if (Response.statusCode == 200) {
      return quate.fromJson(data);
    } else {
      return quate.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<quate>(
            future: getdataapi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.quotes?.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                          child: Column(
                        children: [
                          Text("${snapshot.data!.quotes![index].quote}")
                        ],
                      ));
                    });
              } else if (snapshot.hasError) {}
              return Center(
                child: Text("loading...."),
              );
            }),
      ),
    );
  }
}

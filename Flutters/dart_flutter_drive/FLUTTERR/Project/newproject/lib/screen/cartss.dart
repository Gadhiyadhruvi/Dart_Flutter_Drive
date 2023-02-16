import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newproject/Model/cart.dart';

class aappii extends StatefulWidget {
  const aappii({super.key});

  @override
  State<aappii> createState() => _aappiiState();
}

class _aappiiState extends State<aappii> {
  Future<dhruvi> getdataapi() async {
    final Response = await http.get(Uri.parse('https://dummyjson.com/carts'));
    var data = jsonDecode(Response.body.toString());
    if (Response.statusCode == 200) {
      return dhruvi.fromJson(data);
    } else {
      return dhruvi.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FutureBuilder<dhruvi>(
        future: getdataapi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.carts?.length,
              itemBuilder: (context, index) {
                return Expanded(
                    child: Column(
                  children: [
                    Text("${snapshot.data!.carts![index].id}"),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.carts![index].products!.length,
                      itemBuilder: (context, position) {
                        return Expanded(
                            child: Column(
                          children: [
                            Text(
                                "${snapshot.data!.carts![index].products![position].title}"),
                          ],
                        ));
                      },
                    ),
                  ],
                )

                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: snapshot.data?.carts![index].products?.length,
                    //   itemBuilder: (context, positiin) {
                    //     return Container(
                    //       child: Column(
                    //         children: [
                    //           Text(
                    //               "${snapshot.data!.carts![index].products![positiin].title.toString()}")
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),

                    );
              },
            );
          } else if (snapshot.hasError) {}
          return Center(
            child: Text("Loading......"),
          );
        },
      )),
    );
  }
}

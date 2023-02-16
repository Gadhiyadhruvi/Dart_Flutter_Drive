// 1. Create custom toolbar as per given below design Create toolbar with spinner and search
// functionality

import 'package:flutter/material.dart';

class OneAS extends StatefulWidget {
  const OneAS({super.key});

  @override
  State<OneAS> createState() => _OneASState();
}

class _OneASState extends State<OneAS> {
  var titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Bar"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: TextFormField(
          controller: titleController,
          decoration: InputDecoration(
              hintText: "search",
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              )),
        ),
      ),
    );
  }
}

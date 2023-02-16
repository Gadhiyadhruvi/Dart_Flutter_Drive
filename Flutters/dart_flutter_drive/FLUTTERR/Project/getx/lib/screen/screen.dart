import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/screen/screen2.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => Screen_Two()));
            Get.to(() => Screen_Two());
          },
          child: Center(
              child: Text(
            "Screen1",
            style: TextStyle(fontSize: 30),
          ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Snakbar", "GetX Example",
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.all(16),
              backgroundColor: Colors.deepOrange);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

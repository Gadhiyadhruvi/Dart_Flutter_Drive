import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx/screen/screen.dart';

class Screen_Two extends StatefulWidget {
  const Screen_Two({super.key});

  @override
  State<Screen_Two> createState() => _Screen_TwoState();
}

class _Screen_TwoState extends State<Screen_Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Screen()));
          Get.to(() => Screen());
        },
        child: Center(
            child: Text(
          "Screen2",
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}

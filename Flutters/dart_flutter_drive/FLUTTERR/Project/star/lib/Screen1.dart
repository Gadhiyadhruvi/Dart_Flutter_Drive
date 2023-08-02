import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:star/Screen2.dart';
import 'package:star/mainpage.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void initState() {
    Timer(
        Duration(
          seconds: 4,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Main_page(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text("Fandango",
                style: TextStyle(
                    fontSize: 58,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 46, 13, 122)))));
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:sizer/sizer.dart';
import 'package:star/Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50.h,
            child: Image.asset(
              "assets/page1.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Stack(children: [
            Container(
              height: 50.h,
              child: Image.asset(
                "assets/wall.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 10.h,
              left: 11.w,
              child: Text(
                "A sports social media app,\n united against hate",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            Positioned(
              top: 25.h,
              left: 11.w,
              child: Text(
                "our dhsh bjks dkld jdcb dcjdkl njkcvcn \n hjbzdj jcbj nfjkn fbvjkd fcjk bfjks ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ])
        ],
      ),
    );
  }
}

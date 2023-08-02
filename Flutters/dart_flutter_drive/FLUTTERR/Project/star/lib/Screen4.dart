import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:star/Login.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50.h,
            child: Image.asset(
              "assets/page3.jpg",
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
                "chat and post with other \n fans",
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

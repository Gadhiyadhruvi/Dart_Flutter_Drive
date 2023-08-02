import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:star/Screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50.h,
            child: Image.asset(
              "assets/page2.jpg",
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
                "Follow your favorite \n sports teams",
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

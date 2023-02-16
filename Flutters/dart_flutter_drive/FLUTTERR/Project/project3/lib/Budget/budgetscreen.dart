import 'package:flutter/material.dart';
import 'package:project3/Budget/budget.dart';

import 'package:project3/Budget/viewbudgethistory.dart';
import 'package:project3/screen1.dart';
import 'package:project3/startscreen.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

class Budget_Page extends StatefulWidget {
  const Budget_Page({super.key});

  @override
  State<Budget_Page> createState() => _Budget_PageState();
}

class _Budget_PageState extends State<Budget_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 97, 86),
      body: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: 7.h, left: 1.w, right: 1.w, bottom: 2.h),
            width: 150.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://png.pngtree.com/thumb_back/fh260/background/20200731/pngtree-blue-carbon-background-with-sport-style-and-golden-light-image_371487.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(children: [
              Positioned(
                left: 25.w,
                right: 0.w,
                top: 1.5.h,
                child: Text(
                  "MY BUDGET",
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
              Positioned(
                child: Image.asset('assets/images/back3.png'),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Budget(),
                  ));
            },
            child: Container(
              height: 10.h,
              width: 80.w,
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 64, 160, 137),
              ),
              child: Stack(children: [
                Positioned(
                    left: 3.w,
                    top: 2.h,
                    child: Icon(
                      Icons.add_box,
                      color: Color.fromARGB(255, 253, 248, 248),
                      size: 30.sp,
                    )),
                Positioned(
                  left: 17.w,
                  top: 2.h,
                  child: Text(
                    "ADD MONEY",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 248, 248),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Budget_history(),
                  ));
            },
            child: Container(
              height: 10.h,
              width: 80.w,
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 64, 160, 137),
              ),
              child: Stack(children: [
                Positioned(
                    left: 3.w,
                    top: 2.h,
                    child: Icon(
                      Icons.history_edu,
                      color: Color.fromARGB(255, 253, 248, 248),
                      size: 30.sp,
                    )),
                Positioned(
                  left: 17.w,
                  top: 2.h,
                  child: Text(
                    " VIEW HISTORY",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 248, 248),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen1(),
                  ));
            },
            child: Container(
              height: 5.h,
              width: 15.w,
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 64, 160, 137),
              ),
              child: Stack(children: [
                Positioned(
                  top: 1.2.h,
                  child: Text(
                    " BACK",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 253, 248, 248)),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

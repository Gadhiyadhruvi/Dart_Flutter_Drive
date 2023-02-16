import 'package:flutter/material.dart';
import 'package:project/module2/9.dart';
import 'package:project/module2/10.dart';
import 'package:project/module2/1.dart';
import 'package:project/module2/2.dart';
import 'package:project/module2/3.dart';
import 'package:project/module2/4.dart';
import 'package:project/module2/5.dart';
import 'package:project/module2/6.dart';
import 'package:project/module2/7.dart';
import 'package:project/module2/8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Sixth(),
    );
  }
}
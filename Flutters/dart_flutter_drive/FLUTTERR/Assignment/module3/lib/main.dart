import 'package:flutter/material.dart';
import 'package:module3/1.dart';
import 'package:module3/10.dart';
import 'package:module3/13.dart';
import 'package:module3/2.dart';
import 'package:module3/3.dart';
import 'package:module3/4.dart';
import 'package:module3/5.dart';
import 'package:module3/6.dart';
import 'package:module3/7.dart';
import 'package:module3/8.dart';
import 'package:module3/9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Thirty(),
    );
  }
}

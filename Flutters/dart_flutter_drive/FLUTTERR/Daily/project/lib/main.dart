import 'package:flutter/material.dart';
import 'package:project/BottomNavigation.dart';
import 'package:project/Gradient.dart';
import 'package:project/dialogalert.dart';
import 'package:project/floting_action.dart';
import 'package:project/floting_counter.dart';
import 'package:project/screen/HomeScreen.dart';
import 'package:project/screen/HomeScreen1.dart';
import 'package:project/simple.dart';

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
      home: gradient(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/API%20Project/API/commentapi.dart';

import 'package:project/Travelogue/login.dart';
import 'package:project/Travelogue/palace.dart';

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
      home: Login_page(),
    );
  }
}

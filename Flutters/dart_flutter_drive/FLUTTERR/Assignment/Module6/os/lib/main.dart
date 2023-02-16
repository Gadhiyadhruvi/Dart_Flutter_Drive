import 'package:flutter/material.dart';
import 'package:os/Dropdoun.dart';
import 'package:os/Navigation%20Drower/dashboard.dart';
import 'package:os/datepicker.dart';
import 'package:os/gridview.dart';
import 'package:os/imagepicker.dart';
import 'package:os/phone_calling.dart';
import 'package:os/sms.dart';
import 'package:os/stack.dart';
import 'package:os/url_view.dart';
import 'Animation.dart';

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
      home: URL_View(),
    );
  }
}

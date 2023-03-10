import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp/home.dart';
import 'package:otp/otp.dart';
import 'package:otp/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => Phone_Page(),
      'otp': (context) => OTP_Page(),
      'home': (context) => Home_Page()
    },
  ));
}

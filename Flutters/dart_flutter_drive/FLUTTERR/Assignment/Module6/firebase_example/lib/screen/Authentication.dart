import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/screen/HomeScreen.dart';
import 'package:firebase_example/screen/Login.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomePage();
    } else {
      return LoginPage();
    }
  }
}

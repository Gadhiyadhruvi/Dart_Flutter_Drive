import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/screen/Login.dart';
import 'package:flutter/material.dart';

Future<User?> createAccount(
    String username, String email, String PassWord) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: PassWord))
        .user;

    if (user != null) {
      await _firestore.collection("users").doc(_auth.currentUser!.uid).set({
        "name": username,
        "email": email,
        "status": "pending",
      });
      print("ACCOUNT CREATE SUCCESSFULLY");
      return user;
    } else {
      print("Account createion faield");
    }
  } catch (e) {
    print("----------------------");
    print(e);
    return null;
  }
}

Future<User?> LogIn(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User? user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;

    if (user != null) {
      print("login successfully");
      return user;
    } else {
      print("Login Faield");
    }
  } catch (e) {
    print(e);
  }
}

Future LogOut(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut().then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  } catch (e) {
    print(e);
  }
}

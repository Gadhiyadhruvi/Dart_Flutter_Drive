import 'package:firebase_example/Logic/MainLogic.dart';
import 'package:firebase_example/custom%20Widget/buttonwidget.dart';
import 'package:firebase_example/custom%20Widget/textfieldwidget.dart';
import 'package:firebase_example/screen/Login.dart';
import 'package:flutter/material.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _emaillogincontroller = TextEditingController();
  TextEditingController _passwordlogincontroller = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
              child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 10,
          ),
          myTextField("Enter E-Mail", "E-Mail", false, Icons.email,
              _emaillogincontroller),
          SizedBox(
            height: 10,
          ),
          myTextField("Enter PassWord", "PassWord", true, Icons.lock,
              _passwordlogincontroller),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                if (_usernamecontroller.text.isNotEmpty &&
                    _emaillogincontroller.text.isNotEmpty &&
                    _passwordlogincontroller.text.isNotEmpty) {
                  setState(() {
                    isLoading = true;
                  });

                  createAccount(
                          _usernamecontroller.text,
                          _emaillogincontroller.text,
                          _passwordlogincontroller.text)
                      .then((user) {
                    if (user != null) {
                      setState(() {
                        isLoading = false;
                      });
                      print("Sign up successfully");
                    }
                  });
                } else {
                  print("Please enter all fields");
                }
              },
              child: customWidget("Sign Up")),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
            child: Center(
              child: Text("alredy signup|| click to login user"),
            ),
          )
        ],
      )),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_example/Logic/MainLogic.dart';
import 'package:firebase_example/custom%20Widget/buttonwidget.dart';
import 'package:firebase_example/custom%20Widget/textfieldwidget.dart';
import 'package:firebase_example/screen/HomeScreen.dart';
import 'package:firebase_example/screen/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emaillogincontroller = TextEditingController();
  TextEditingController _passwordlogincontroller = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Center(
                    child: Text(
                  "Login",
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
                      if (_emaillogincontroller.text.isNotEmpty &&
                          _passwordlogincontroller.text.isNotEmpty) {
                        setState(() {
                          isLoading = true;
                        });

                        LogIn(_emaillogincontroller.text,
                                _passwordlogincontroller.text)
                            .then((value) {
                          if (User != null) {
                            setState(() {
                              isLoading = false;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          } else {
                            setState(() {
                              isLoading = true;
                            });
                          }
                        });
                      } else {
                        print("PLEASE FILL ALL THE FIELDS");
                      }
                    },
                    child: customWidget("Login")),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register_Page()));
                  }),
                  child: Center(
                    child: Text("New User | Click Here for create Account"),
                  ),
                )
              ],
            )),
    );
  }
}

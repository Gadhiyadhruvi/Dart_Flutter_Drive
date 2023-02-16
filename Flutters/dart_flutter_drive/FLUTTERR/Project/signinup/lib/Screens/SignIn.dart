import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signinup/Reusable/Reusable.dart';
import 'package:signinup/Utils/color_utils.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color.fromARGB(255, 202, 30, 165),
              Color.fromARGB(255, 188, 30, 143),
              Color.fromARGB(173, 41, 6, 237)
            ],
                //         [
                //   hexStringToColor("CB2893"),
                //   hexStringToColor("9546C4"),
                //   hexStringToColor("5E61A4")
                // ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(100),
          // 80,
          // MediaQuery.of(context).size.height * 0.2,
          // 20,
          // 0,
          //),
          child: Column(
            children: <Widget>[
              logoWidget("assets/logo.png"),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter UserName", Icons.verified_user, false,
                  _emailTextController),
            ],
          ),
        )),
      ),
    );
  }
}

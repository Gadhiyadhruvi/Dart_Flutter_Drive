//Write a code to display profile and logout option in option

import 'package:flutter/material.dart';
import 'package:module3/7.dart';

class Eight extends StatefulWidget {
  const Eight({super.key});

  @override
  State<Eight> createState() => _EightState();
}

class _EightState extends State<Eight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {});

          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => SevenAS()));
        },
        child: Text(
          "logout",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Stack_Widget extends StatefulWidget {
  const Stack_Widget({super.key});

  @override
  State<Stack_Widget> createState() => _Stack_WidgetState();
}

class _Stack_WidgetState extends State<Stack_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            width: 500,
            height: 500,
            color: Colors.orangeAccent,
          ),
          Container(
            margin: EdgeInsets.all(60),
            height: 400,
            width: 400,
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.all(90),
            height: 300,
            width: 300,
            color: Colors.greenAccent,
          )
        ],
      )),
    );
  }
}

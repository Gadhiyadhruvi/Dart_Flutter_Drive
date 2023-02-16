import 'dart:developer';

import 'package:flutter/material.dart';

class Floting_Counter extends StatefulWidget {
  const Floting_Counter({super.key});

  @override
  State<Floting_Counter> createState() => _Floting_CounterState();
}

class _Floting_CounterState extends State<Floting_Counter> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp Bar"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Counter = $counter",
            style: TextStyle(fontSize: 36),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          counter = counter + 1;
        }); // calling
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:firebase_example/Logic/MainLogic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Text("WelCome to Home Page"),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            LogOut(context);
          },
          child: Icon(Icons.logout)),
    );
  }
}

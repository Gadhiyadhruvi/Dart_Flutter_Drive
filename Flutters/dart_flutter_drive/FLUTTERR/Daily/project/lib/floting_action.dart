import 'package:flutter/material.dart';
class Floting_Action extends StatefulWidget {
  const Floting_Action({super.key});

  @override
  State<Floting_Action> createState() => _Floting_ActionState();
}

class _Floting_ActionState extends State<Floting_Action> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text("MyApp Bar"),),
  body:Container(child: Text("EXAMPLE"),),
  floatingActionButton: FloatingActionButton.extended(onPressed: (() {
    
  }
), label: Text("My Home"),
icon: Icon(Icons.home),),
);
  }
}

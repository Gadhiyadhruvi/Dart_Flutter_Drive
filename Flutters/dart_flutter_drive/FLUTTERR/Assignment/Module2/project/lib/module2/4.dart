// 4. create an application to change background when button is clicked

import 'package:flutter/material.dart';

class Forth extends StatefulWidget {
  const Forth({super.key});

  @override
  State<Forth> createState() => _ForthState();
}

class _ForthState extends State<Forth> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
          backgroundColor: Colors.brown,
          body: GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (((context) => Screen1()))));
          },
         child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(70),
                                            decoration: BoxDecoration(
                                              
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                            ),
                                   child: Text("Click Me",style: TextStyle(color: Color.fromARGB(255, 209, 210, 212),fontSize: 20,
                                   ),),
                                   
                                   ),),
       );
  }}
        

////////////////////   2  /////////

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
    }
}
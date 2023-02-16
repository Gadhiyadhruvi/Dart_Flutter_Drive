// 9. Write a program in android display screen color which the Color will be select from the radio
//    button. 

 import 'dart:html';

import 'package:flutter/material.dart';

class Ninegth extends StatefulWidget {
  const Ninegth({super.key});

  @override
  State<Ninegth> createState() => _NinegthState();
}

class _NinegthState extends State<Ninegth> {
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  body: Container(
        
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 100,right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RadioListTile(title: Text("Red"), value: "Red", groupValue:result , onChanged: ((value){
            setState(() {
             Color: Colors.redAccent;
            result= value.toString();
            });
          })),
          RadioListTile(title: Text("Yellow"), value: "Yellow", groupValue:result , onChanged: ((value){
            setState(() {
             Color: Colors.yellowAccent;
             result= value.toString();
            });
          })),
          RadioListTile(title: Text("Green"), value: "Green", groupValue:result , onChanged: ((value){
            setState(() {
              Color: Colors.greenAccent;
              result= value.toString();
            });
          })),
          RadioListTile(title: Text("Purple"), value: "Purple", groupValue:result, onChanged: ((value){
            setState(() {
              BackgroundFetchEvent:
            Color: Colors.purpleAccent;
              result= value.toString();
            });
          })),
          RadioListTile(title: Text("Blue"), value: "Blue", groupValue:result , onChanged: ((value){
            setState(() {
             Color: Colors.redAccent;
            result= value.toString();
            });
          })),
          RadioListTile(title: Text("Black"), value: "Black", groupValue:result , onChanged: ((value){
            setState(() {
             Color: Colors.yellowAccent;
             result= value.toString();
            });
          })),
          RadioListTile(title: Text("White"), value: "White", groupValue:result , onChanged: ((value){
            setState(() {
              Color: Colors.greenAccent;
              result= value.toString();
            });
          })),
          RadioListTile(title: Text("Pink"), value: "Pink", groupValue:result, onChanged: ((value){
            setState(() {
              BackgroundFetchEvent:
            Color: Colors.purpleAccent;
              result= value.toString();
            });
          })),
          Text('$result')
          
          ]),
      ),
    
    );
}
}
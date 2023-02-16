// 6. create an application to display n edittext where n is number input by user 

import 'package:flutter/material.dart';

class Sixth extends StatefulWidget {
  const Sixth({super.key});
  
  @override
  State<Sixth> createState() => _SixthState();
}

class _SixthState extends State<Sixth> {
   TextEditingController numbercontroller = TextEditingController();
    String? result;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        height: 200,
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 100,right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            TextFormField(
            controller: numbercontroller,
            decoration: const InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.greenAccent)),
              label: const Text("Enter Number"),
              hintText: "Enter Number",
            ),
          ),
              Text(' $result')
          ]),
      ),
    );
}
}
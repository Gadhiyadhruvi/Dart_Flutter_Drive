//  1. Create an application to take input number from user and print its reverse number in
//     TextView without button.

import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  bool? status = true;
  Color? colorname;
  String? result;
  int? a, num;
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(children: [
          TextFormField(
            controller: numbercontroller,
            decoration: const InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.greenAccent)),
              label: const Text("Enter Number"),
              hintText: "Enter Number",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  int num = int.parse(numbercontroller.text.toString());
                  for (int i = num; i >= 1; i--) {
                    print("$i");
                  }
                });
              },
              style: ElevatedButton.styleFrom(primary: Colors.amberAccent),
              child: Text("Submit"))
        ]),
      ),
    );
  }
}

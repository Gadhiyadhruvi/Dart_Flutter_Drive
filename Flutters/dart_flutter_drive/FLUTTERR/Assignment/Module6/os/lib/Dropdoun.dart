import 'package:flutter/material.dart';

class DropDoun extends StatefulWidget {
  const DropDoun({super.key});

  @override
  State<DropDoun> createState() => _DropDounState();
}

class _DropDounState extends State<DropDoun> {
  String selectedItem = "C Language";
  var subject = ['C Language', 'C++', 'Java', 'Android', 'Python', 'PHP'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      DropdownButton(
          value: selectedItem,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          items: subject.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedItem = value!;
            });
          })
    ])));
  }
}

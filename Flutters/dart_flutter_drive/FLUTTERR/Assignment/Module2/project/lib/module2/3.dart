// 3. Create an application with radio buttons (result, Substraction, Multiply, Division) EditText
//    (number1, number2) and print result as per user choice from radio button in TextView

import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController number1controller = TextEditingController();
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        
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
            TextFormField(
            controller: number1controller,
            decoration: const InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.greenAccent)),
              label: const Text("Enter Number"),
              hintText: "Enter Number",
            ),
          ),
          RadioListTile(title: Text("Addition"), value: "Addition", groupValue:result , onChanged: ((value){
            setState(() {
              int value = int.parse(numbercontroller.text)+
              int.parse(number1controller.text);
              result= value.toString();
            });
          })),
          RadioListTile(title: Text("Substraction"), value: "Substraction", groupValue:result , onChanged: ((sum){
            setState(() {
             int sum = int.parse(numbercontroller.text)-
              int.parse(number1controller.text);
              result= sum.toString();
            });
          })),
          RadioListTile(title: Text("Multiply"), value: "Multiply", groupValue:result , onChanged: ((sum){
            setState(() {
              int sum = int.parse(numbercontroller.text)*
              int.parse(number1controller.text);
              result= sum.toString();
            });
          })),
          RadioListTile(title: Text("Division"), value: "Division", groupValue:result, onChanged: ((sum){
            setState(() {
             int sum = int.parse(numbercontroller.text)~/
              int.parse(number1controller.text);
              result= sum.toString();
            });
          })),
          Text(' $result')
          
          ]),
      ),
    );
}
}
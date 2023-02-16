import 'package:flutter/material.dart';

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  bool? status = true;
  Color? colorname;
  String? result;
  int? a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEXTFORM FIELD")),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: status! ? Colors.blueAccent :Colors.deepOrange,
        child: Column(children: [
                      ElevatedButton(onPressed: () {
                        setState(() {
                           print("==========>> status $status");
                          if(status!){
                            colorname=Colors.blueAccent;
                            result="change";
                            print("========>> colorname = $colorname");
                            status = false;
                          }else{
                            colorname=Colors.deepOrange;
                            result="change";
                            print("========>> colorname = $colorname");
                            status = true;
                          }
                        });
                       
                      },style: ElevatedButton.styleFrom(primary: Colors.amberAccent),
                       child: Text("Submit"))
        ],),
      ),
    );
    }
}

class  IFELSE extends StatefulWidget {
  const IFELSE ({super.key});

  @override
  State<IFELSE> createState() => IFELSE_State();
}

class  IFELSE_State extends State<IFELSE> {
  bool? status = true;
  int? num;
  String? result;
  TextEditingController numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("TEXTFORM FIELD"),backgroundColor: Color.fromARGB(255, 133, 166, 194),),
       body: Center( 
        child: Container(
          margin: EdgeInsets.all(20),
          child:Column(
            children:[
                 TextFormField(
                  
                  controller: numbercontroller,
                  decoration: const InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.greenAccent)
                      ),
                      label: const Text("Enter Number"),
                      hintText: "Enter Number",
                  ),
                 ),
                 Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: () {
                            
                             setState(() {
                               num = int.parse(numbercontroller.text.toString());
                               if(num! % 2 == 0){
                                result = "Even number";
                               }else{
                                result = "Odd  number";
                               }
                             }); 
                      },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 199, 184, 129)),
                       child: Text("EvenOdd")),
                      ),
                      Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: () {
                             setState(() {
                               num = int.parse(numbercontroller.text.toString());
                               if(num! <0){
                                result = "Nagative number";
                               }else{
                                result = "Positive  number";
                               }
                             }); 
                      },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 199, 184, 129)),
                       child: Text("PositiveNagative")),
                      ),
                      Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: () {
                             setState(() {
                               num = int.parse(numbercontroller.text.toString());
                               int a = 0, b = 1, c;
                               for(int i = 1; i<= num!; i++){
                                c = a  + b;
                                result = ("$c");
                                a=b;
                                b=c;
                               print("$a");
                               }
                              
                             });
                      },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 199, 184, 129)),
                       child: Text("Fibonancci")),
                      ), 
                      Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: () {
                             setState(() {
                               num = int.parse(numbercontroller.text.toString());
                               
                               int fact = 1;
                               for(int i = 1; i<= num!; i++){
                                fact *=i;
                                result = ("$fact");
                               }
                              
                             });
                      },style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 199, 184, 129)),
                       child: Text("Factorial")),
                      ),
                      Text(
                        
                        "$result",
                        style: TextStyle(fontSize: 26),
                      ),
          ],),),),);
          
          }
        }
                       
                      
// 7. create an application to display Textview when checkbox is checked and hide otherwise 

import 'package:flutter/material.dart';

class Seventh extends StatefulWidget {
  const Seventh({super.key});

  @override
  State<Seventh> createState() => _SeventhState();
}

class _SeventhState extends State<Seventh> {
  List<String> mylist = [];
  bool Android = false;
  bool Dart = false;
  bool Flutter = false;
  bool Python = false;
  bool Java = false;
  bool C_Lang = false;
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  body: Column(children: [
                    Row(children: [Text("Android"),
                        Checkbox(value: Android, onChanged: ((value) {
                            setState(() {
                            Android = value!;
                             result= value.toString();
                            });
                              if(Android){
                                 mylist.add("Android");
                              }else{
                                 mylist.remove("Android");
                              }
                            })),
                  ],),
                  Row(children: [Text("Dart"),
                       Checkbox(value: Dart, onChanged: ((value) {
                              setState(() {
                                Dart = value!;
                                 result= value.toString();
                              });
                              if(Dart){
                                 mylist.add("Dart");
                              }else{
                                 mylist.remove("Dart");
                              }
                            })),
                  ],),
                   Row(children: [Text("Flutter"),
                       Checkbox(value: Flutter, onChanged: ((value) {
                              setState(() {
                                Flutter = value!;
                                 result= value.toString();
                              });
                              if(Flutter){
                                 mylist.add("Flutter");
                              }else{
                                 mylist.remove("Flutter");
                              }
                            })),
                  ],),
                  Row(children: [Text("Python"),
                       Checkbox(value: Python, onChanged: ((value) {
                              setState(() {
                                Python = value!;
                                 result= value.toString();
                              });
                              if(Python){
                                 mylist.add("Python");
                              }else{
                                 mylist.remove("Python");
                              }
                            })),
                  ],),
                  Row(children: [Text("Java"),
                       Checkbox(value: Java, onChanged: ((value) {
                              setState(() {
                                Java = value!;
                                 result= value.toString();
                              });
                              if(Java){
                                 mylist.add("Java");
                              }else{
                                 mylist.remove("Java");
                              }
                            })),
                  ],),
                  Row(children: [Text("C_Lang"),
                       Checkbox(value: C_Lang, onChanged: ((value) {
                              setState(() {
                                C_Lang = value!;
                                 result= value.toString();
                              });
                              if(C_Lang){
                                 mylist.add("C_Lang");
                              }else{
                                 mylist.remove("C_Lang");
                              }
                            })),
                  ],),
                 Text('$result')

                  ],)
                          
                   
    );
    }
    }
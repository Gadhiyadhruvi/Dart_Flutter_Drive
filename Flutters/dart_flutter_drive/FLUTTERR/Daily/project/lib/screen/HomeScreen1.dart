import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  List<String> title = ["Food 1","Food 2","Food 3"];
  List<String> subtitle = ["subtitle 1","subtitle 2","subtitle 3"];
  List<double> ratting = [4.5,2.5,3.5];
  List<double> price = [150,450,850];
  List<double> time = [15,20,30];
  List<String> img = ["assets/images/food1.jpg",
                      "assets/images/food2.jpg",
                      "assets/images/food3.jpg"]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:title.length ,itemBuilder: ((context, index) {
             return  Card(
                        
                        child: Row(
                          children: [
                                  Container(
                                    child: Image.asset(img[index],fit: BoxFit.fill,),
                                    height: 100,
                                    width: 100,
                                  ),
                                  Expanded(child: Container(
                                      
                                           child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(title[index],
                                              style: TextStyle(fontSize: 26),),
                                              Text(subtitle[index],
                                              style: TextStyle(fontSize: 26),),
                                            Container(
                                            
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    Container(child: Icon(Icons.star)),
                                                  Container(
                                                    child: Text(ratting[index].toString(),
                                                    style: TextStyle(fontSize: 20),),
                                                  ),
                                                  ],),
                                                  Row(
                                                    children: [
                                                      Text(time[index].toString()),
                                                      Text("min"),
                                                    ],
                                                  ),
                                                  Container(
                                                    child: Text(price[index].toString(),
                                                    style: TextStyle(fontSize: 20),),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ]),
                                  ))

                                  ]),);}),),);
      }
  }
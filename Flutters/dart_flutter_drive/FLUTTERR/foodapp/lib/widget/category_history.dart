import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/Category_controller.dart';
import 'package:get/get.dart';

import 'rate_driver_bottomsheet.dart';

class CategoryHistory extends StatelessWidget {
  CategoryHistory({Key? key}) : super(key: key);
  final controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Drink"),
                    Text("Completed"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                    Text("Tuesday, 03 March 2023"),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Image(image: AssetImage("assets/fb.png"),height: MediaQuery.of(context).size.height*0.15,fit: BoxFit.fill,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Starbucks"),
                            Icon(Icons.check_circle,color: Colors.green,),
                          ],
                        ),
                        Text("8700 Beverly, CA 90048"),
                        Row(
                          children: [
                            Icon(Icons.attach_money,color: Colors.orange,),
                            Text("40",style: TextStyle(color: Colors.orange,fontSize: 18),),
                            Text(" * 2 items")
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            elevation: 0,
                            context: context,
                            builder: (context){
                              return RateDriverBottomSheet();
                            }
                        );
                      },
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.41,
                            margin: const EdgeInsets.only(top: 20,bottom: 20),
                            child: const Text("Rate",style: TextStyle(color: Colors.black,fontSize: 18),))),
                    SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                    GestureDetector(
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                            height: MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.41,
                            margin: const EdgeInsets.only(top: 20,bottom: 20),
                            child: const Text("Re-Order",style: TextStyle(color: Colors.white,fontSize: 18),))),
                  ],
                )
              ],
            )
          ),
          const SizedBox(height: 8,),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Food"),
                      Text("Completed"),
                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                      Text("Tuesday, 03 March 2023"),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Image(image: AssetImage("assets/google.png"),height: MediaQuery.of(context).size.height*0.12,fit: BoxFit.fill,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Burger King"),
                              Icon(Icons.check_circle,color: Colors.green,),
                            ],
                          ),
                          Text("8700 Beverly, CA 90048"),
                          Row(
                            children: [
                              Icon(Icons.attach_money,color: Colors.orange,),
                              Text("40",style: TextStyle(color: Colors.orange,fontSize: 18),),
                              Text(" * 2 items")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.41,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Rate",style: TextStyle(color: Colors.black,fontSize: 18),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.41,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Re-Order",style: TextStyle(color: Colors.white,fontSize: 18),))),
                    ],
                  )
                ],
              )
          ),
          const SizedBox(height: 8,),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Drink"),
                      Text("Completed"),
                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                      Text("Tuesday, 03 March 2023"),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Image(image: AssetImage("assets/fb.png"),height: MediaQuery.of(context).size.height*0.15,fit: BoxFit.fill,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Starbucks"),
                              Icon(Icons.check_circle,color: Colors.green,),
                            ],
                          ),
                          Text("8700 Beverly, CA 90048"),
                          Row(
                            children: [
                              Icon(Icons.attach_money,color: Colors.orange,),
                              Text("40",style: TextStyle(color: Colors.orange,fontSize: 18),),
                              Text(" * 2 items")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.41,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Rate",style: TextStyle(color: Colors.black,fontSize: 18),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.41,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Re-Order",style: TextStyle(color: Colors.white,fontSize: 18),))),
                    ],
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}

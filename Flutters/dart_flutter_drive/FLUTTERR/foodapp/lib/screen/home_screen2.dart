import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/home2_controller.dart';
import 'package:get/get.dart';

import 'home_screen3.dart';

class HomeScreen2 extends GetView<Home2Controller> {
  static String pageId = '/screenHome2';
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.27,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzLAyOicIWbKKJYvlV6lz1JRKsxe8nk-rEgw&usqp=CAU",fit: BoxFit.cover,),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          const Text(
            "Free shipping on all orders",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20,),
            child: const Text(
              " Free shiping on the primary order \n whist the usage of CaPay fee \n method.",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 8,
                width: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[300]),
              ),
              Container(
                height: 8,
                width: 30,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orangeAccent),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 8,
                width: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[300]),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          GestureDetector(
            onTap: () {
              Get.to(() => HomeScreen3());
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                " Get Started ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

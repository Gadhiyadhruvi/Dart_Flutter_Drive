import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/home3_controller.dart';
import 'package:foodapp/screen/login_screen.dart';
import 'package:get/get.dart';

class HomeScreen3 extends GetView<Home3Controller> {
  static String pageId = '/screenHome3';
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.27,
            child: Image.network(
                "https://cdn.cdnparenting.com/articles/2018/12/14121244/1143416498-H.jpg"), ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          const Text(
            " +24K Restaurants ",
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
              " Easily find your favorite food and \n have it delivered in record time.",
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
                width: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[300]),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 8,
                width: 30,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orangeAccent),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          GestureDetector(
            onTap: () {
              Get.to(() => LoginScreen());
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

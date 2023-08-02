import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/home1_controller.dart';
import 'package:foodapp/screen/home_screen2.dart';
import 'package:get/get.dart';

class HomeScreen1 extends GetView<Home1controller> {
  static String pageId = '/screenhome1';
  HomeScreen1({Key? key}) : super(key: key);

  final controller = Get.put(Home1controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.15,),
          SizedBox(
          height: MediaQuery.of(context).size.height*0.27,
            child: Image.network(
                "https://i.ytimg.com/vi/sCA3q82rDG0/maxresdefault.jpg"), ),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,),
          const Text(
            "Diverde & sparkling food.",
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
              " We use the best local ingredents to\n create fresh and delicious food and\n drinks.",
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
                width: 30,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orangeAccent),
              ),
              Container(
                height: 8,
                width: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[300]),
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
                  Get.to(() => HomeScreen2());
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/resource/color.dart';
import 'package:quizappgetx/screen/question_screen.dart';
import '../get/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  static String pageId = '/screenHome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Icon(Icons.list_outlined,color: Colors.white,size: 35),
      ),
      body: Container(
        color: Colors.purpleAccent,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.017,),
            Text("What Do You Want To Improve Today?",style: TextStyle(color: AppColors.white,fontSize: 19,fontWeight: FontWeight.w500),),
            SizedBox(height: MediaQuery.of(context).size.height*0.087),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),color: Colors.white),
                    height: MediaQuery.of(context).size.height*0.71,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width*0.06,
                  right: MediaQuery.of(context).size.width*0.06,
                  bottom: MediaQuery.of(context).size.height*0.5,
                  top: MediaQuery.of(context).size.height*0.03,
                  child: InkWell(
                    onTap: () {
                      Get.to(() => QuestionScreen());
                    },
                    child: Card(
                        elevation: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image(image: const AssetImage("assets/sugar.jpg",),height: MediaQuery.of(context).size.height*0.12,),
                            Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                                const Text("General Quiz",style: TextStyle(fontSize: 18),),
                                const Text("bscn oejf kehficen jodckpm \ndejmlvc hndl;m diolcfk diohsn",style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ],
                        )
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


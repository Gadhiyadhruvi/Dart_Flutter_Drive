import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/get/controller/overview_controller.dart';
import 'package:quizappgetx/get/controller/question_controller.dart';
import 'package:quizappgetx/screen/home_screen.dart';
import 'package:quizappgetx/screen/question_screen.dart';
import 'package:quizappgetx/widget/custom_overview_button.dart';

class OverViewScreen extends GetView<OverViewController> {
  final controller = Get.put(OverViewController());
  final controllerr = Get.find<QuestionController>();
  static String pageId = '/screenOverview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
      ),
      backgroundColor: Colors.deepPurpleAccent[400],
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.048),
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            margin: const EdgeInsets.only(left:1,right: 1),
            decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),color: Colors.purple[50]),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                const Image(image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.TNHdDjEypXxLNNmu0zhkMQHaDm&pid=Api&P=0&h=180",scale: 1.2)),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                const Text("Congratulations",style: TextStyle(color: Colors.purpleAccent,fontSize: 25),),
                Obx(() =>Text("You have got ${controllerr.score.value} poits",style: TextStyle(color: Colors.purpleAccent,fontSize: 17),),),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                // List.generate(5, (index) => Container()),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     CustomContainerAnswer(onPressed: () {
                //       if(controllerr.score.value == controllerr.isSelected.value) {
                //         Colors.greenAccent;
                //       } else {
                //         Colors.redAccent;
                //       }
                //     }, name: '1',),
                //     CustomContainerAnswer(onPressed: () {  }, name: '2',),
                //     CustomContainerAnswer(onPressed: () {  }, name: '3',),
                //     CustomContainerAnswer(onPressed: () {  }, name: '4',),
                //     CustomContainerAnswer(onPressed: () {  }, name: '5',)
                //   ],
                // ),
                SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomOverViewButton(
                        name: 'Try Again',
                        onPressed: () {
                          controllerr.score.value = 0;
                          controllerr.pageController.jumpToPage(0);
                          controllerr.currentquestionIndex.value = 0;
                           Get.back();
                        }),
                    CustomOverViewButton(name: 'Go to Home', onPressed: () { Get.to(() => HomeScreen());}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
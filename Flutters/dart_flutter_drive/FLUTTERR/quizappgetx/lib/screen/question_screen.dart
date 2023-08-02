import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller/question_controller.dart';
import '../widget/question_button.dart';
import '../widget/timer_question.dart';
import 'overview_screen.dart';

class QuestionScreen extends GetView<QuestionController> {
  final controller = Get.put(QuestionController());
  static String pageId = '/screenQuestion';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
          },
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.deepPurpleAccent[400],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const QuestionTimer(),
                  Obx(() => Text("Q. ${controller.currentquestionIndex.value + 1}"
                    ,style: const TextStyle(color: Colors.white),),),
                  const Icon(Icons.calendar_view_day_rounded,color: Colors.white,),
                ],
              ),
            ),
            backgroundColor: Colors.deepPurpleAccent[400],
            body: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.066),
                Expanded(
                   child: Container(
                   height: MediaQuery.of(context).size.height*0.80,
                   padding: const EdgeInsets.only(top: 20,bottom: 15),
                   margin: const EdgeInsets.only(left:1,right: 1),
                   decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),color: Colors.purple[50]),
                   child: PageView.builder(
                     physics: const NeverScrollableScrollPhysics(),
                     itemCount: controller.quizlist.length,
                     controller: controller.pageController,
                     itemBuilder: (context, pindex) {
                       final pageControllerr = PageController();
                       return Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 30),
                             child: Text(controller.quizlist[pindex].question,style:  const TextStyle(fontSize: 20),),),
                           Obx(() => Column(
                             children: List.generate(
                                 controller.quizlist[pindex].answerlist.length, (item) {
                                   String ans= controller.quizlist[pindex].answerlist[item];
                                   bool selecteans = ans == controller.isSelected.value;
                               return Padding(
                                 padding: const EdgeInsets.only(top: 10),
                                 child:  GestureDetector(
                                   onTap: () {
                                     controller.isSelected.value = ans;
                                     print('object ${ans}');
                                     controller.update();
                                   },
                                   child: GetBuilder<QuestionController>(
                                     builder: (controller) {
                                       return Container(
                                         height: MediaQuery.of(context).size.height*0.072,
                                         width: MediaQuery.of(context).size.width*0.9,
                                         alignment: Alignment.center,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: selecteans  ? Colors.purpleAccent : Colors.greenAccent),
                                         child: Text(controller.quizlist[pindex].answerlist[item],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                                       );
                                     },
                                   ),),);
                             }),
                           ),
                           ),
                           SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                           QuestionButton(name: 'Next', onPressed: () {
                             if(controller.currentquestionIndex.value <= 3) {
                               controller.pageController.nextPage(duration: const Duration(milliseconds: 20), curve: Curves.ease);
                               controller.currentquestionIndex.value++;
                               if(controller.quizlist[pindex].currectAns == controller.isSelected.value){
                                 controller.score.value++;
                                 print('score ${controller.score.value}');
                                 print('currect ${controller.quizlist[pindex].currectAns}');
                                 print('selected a ${controller.isSelected.value}');
                               }
                             } else {
                               if(controller.quizlist[pindex].currectAns == controller.isSelected.value){
                                 controller.score.value++;
                                 print('score ${controller.score.value}');
                                 print('currect ${controller.quizlist[pindex].currectAns}');
                                 print('selected a ${controller.isSelected.value}');
                               }
                               controller.currentquestionIndex.value = 0;
                               Get.to(() => OverViewScreen());
                             }
                             }),
                         ]);
                       }),
                   )
                ),
              ]),
        ),
    );
  }
}
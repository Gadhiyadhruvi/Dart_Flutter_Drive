import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/get/controller/question_controller.dart';

class QuestionTimer extends StatelessWidget {
  const QuestionTimer({Key? key}) : super(key: key);

  // final controller = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.045,
      width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          border: const Border(right: BorderSide(color: Colors.white,width: 2),left: BorderSide(color: Colors.white,width: 2),top: BorderSide(color: Colors.white,width: 2),bottom: BorderSide(color: Colors.white,width: 2),)
      ),
      child: TweenAnimationBuilder<Duration>(
          duration: const Duration(seconds: 20),
          tween: Tween(begin: const Duration(minutes: 15), end: Duration.zero),
          onEnd: () {
            print('Timer ended');
            // controller.currentquestionIndex.value + 1;
            // controller.pageController.nextPage(duration: Duration(milliseconds: 20), curve: Curves.ease);

            // Get.to(() => )
          },
          builder: (BuildContext context, Duration value, Widget? child) {
            final minutes = value.inMinutes;
            final seconds = value.inSeconds % 60;
            return Padding(
                padding: const EdgeInsets.all( 2),
                child: Text('$minutes:$seconds',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25)));
          }),
    );
  }
}

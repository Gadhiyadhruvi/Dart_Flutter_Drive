import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/model/question_model.dart';

class QuestionController extends GetxController {

 RxInt currentquestionIndex = 0.obs;
 PageController pageController = PageController(initialPage: 0);
 var isSelected = "".obs;
 var score = 0.obs;
 var currectAns = ''.obs;

 @override
  void  onClose() {
   pageController.dispose();
    super.onClose();
  }

 @override
  void onInit() {
   super.onInit();
   pageController = PageController();
 }

 List<QuestionModel> quizlist = [
  QuestionModel(
      question: "1. Grand Central Terminal, Park Avenue, New York is the world's",
      answerlist: [
       "A) largest railway station",
       "B) highest railway station",
       "C) longest railway station",
       "D) None of the above",
      ], currectAns: 'A) largest railway station'
  ),
  QuestionModel(
      question: "2. The headquarter of ESCAP Economic and Social Commission for Asia are situated at",
      answerlist: [
       "A) Bangkok",
       'B) Geneva',
       'C) Santiago (Chile)',
       'D) Baghdad',
      ],
      currectAns: 'A) Bangkok'),
  QuestionModel(question: "3. Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
      answerlist:
  [
   'A) Asia',
   "B) Africa",
   'C) Europe',
   'D) Australia',
  ], currectAns: 'B) Africa'),
  QuestionModel(question: "4. Garampani sanctuary is located at",
      answerlist: [
       'A) Junagarh',
       "B) Diphu",
       'C) Kohima',
       'D) Gangtok',
      ], currectAns: 'B) Diphu'),
  QuestionModel(question: "5. For which of the following disciplines is Nobel Prize awarded ?",
      answerlist: [
       'A) Physics and Chemistry',
       'B) Physiology or Medicine',
       'C) Literature, Peace',
       "D) All of the above",
      ], currectAns: 'D) All of the above'),
 ];
}

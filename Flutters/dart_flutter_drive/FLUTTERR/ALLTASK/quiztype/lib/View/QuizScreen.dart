// ignore_for_file: prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../Controller/quiz_controller.dart';
import '../Model/quiz_model.dart';
import 'answer.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Question> questions = getQuestions();
  final QuizController quizController = Get.put<QuizController>(QuizController());

  List<Question> questionlist = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizAnswer(),));
                        },
                        child: const Text("Skip",style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  const SizedBox(height: 50,),
                  Text("Fisio",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color: Colors.orange[700])),
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 10,),
                    child:  Text(questionlist[currentQuestionIndex].questionText.toString(),style: const TextStyle(fontSize: 20),),),
                  answerList(),
                  buttonwidgwt(),
                  const SizedBox(height: 40,),
                ],
              ),
            )
        ),
    );
  }

  answerList() {
    return Column(
     children: questionlist[currentQuestionIndex].answerList.map((e) => _answerRadioButton(e),).toList(),
    );
  }

  Widget _answerRadioButton(Answer answer) {
    return Column(
      children: [
        Obx(() => RadioListTile(
          title: Text(answer.answerText.value),
          value: answer.answerText.value,
          groupValue: quizController.selectedOption.value,
          onChanged: (value) {
          quizController.selectedOption.value = value!;
          quizController.scorelist.add(value);
          quizController.answerlist.add(value);
          if(selectedAnswer == null) {
            if(answer.isCorrect.value) {
              score++;
            }
          }
          setState(() {
            quizController.selectOptionint(currentQuestionIndex);
            selectedAnswer = answer;
            quizController.selectedOption.value = value;
          });
        },)),
      ],
    );
  }

  buttonwidgwt() {
    bool isLastQuestion = false;
    if(currentQuestionIndex == questionlist.length - 1) {
      isLastQuestion = true;
    }
    return InkWell(
      onTap: () {
        if(isLastQuestion) {
          showDialog(context: context, builder: (_) => _showAnswer());
        }
        setState(() {
          selectedAnswer = null;
          currentQuestionIndex++;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height*0.05,
        width: MediaQuery.of(context).size.width*0.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
        child: Text(isLastQuestion ? "Submit" : "Next",style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
      ),
    );
  }

  _showAnswer() {
    bool isPassed = false;
    if(score >= questionlist.length * 0.6) {
      isPassed = true;
    }
    String tital = isPassed ? "Passed " : " Failed" ;
    return  Scaffold(
      body:
      Column(
        children: [
          const SizedBox(height: 70,),
          Center(
              child: Text("QUIZ ANSWER",style: TextStyle(fontSize: 40,color: Colors.orange[700]),)
          ),
          const SizedBox(height: 10,),
          Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(left: 10,right: 5,),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      itemCount: quizController.answerlist.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => Container(
                              padding: const EdgeInsets.all(6),
                              child: Text(quizController.answerlist[index].toString()),
                            )
                            )],
                        );
                      },),
                  )
              )),
          Text(
            tital +  "$score" , style: TextStyle(fontSize: 30,color: Colors.orange[700]),),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onHover: (value) {
                  const Color.fromARGB(255, 51, 0, 0);
                },
                onTap: () {
                  Get.to(() => const QuizScreen());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width*0.4,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
                  child: const Text("Restart",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
              ),
              InkWell(
                onHover: (value) {
                  const Color.fromARGB(255, 51, 0, 0);
                },
                onTap: () {
                  currentQuestionIndex = 0;
                  score = 0;
                  selectedAnswer = null;
                  SystemNavigator.pop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width*0.4,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 7, bottom: 7),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
                  child: const Text("Exit",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
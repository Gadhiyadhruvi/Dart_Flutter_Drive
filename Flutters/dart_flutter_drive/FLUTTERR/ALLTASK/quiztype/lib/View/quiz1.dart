// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:quiztype/Model/quiz_model.dart';
// import 'package:quiztype/View/quiz2.dart';
//
// import 'QuizScreen.dart';
//
// class Quiz1 extends StatefulWidget {
//   const Quiz1({Key? key}) : super(key: key);
//
//   @override
//   State<Quiz1> createState() => _Quiz1State();
// }
//
// class _Quiz1State extends State<Quiz1> {
// String? selectedAnswerIndex;
// // var pagecontroller = PageController(initialPage: 0);
// // Question questionlist = Question();
// int answer = 0;
//   List qustion = [
//     'A) largest railway station',
//     'B) highest railway station',
//     'c) longest railway station',
//     'D) None of the above',
//   ];
//   List<int> score = [
//     10,
//     0,
//     0,
//     0,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//             physics: const NeverScrollableScrollPhysics(),
//             child: Padding(
//               padding: EdgeInsets.all(40),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Icon(Icons.arrow_back_ios),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz2(),));
//                         },
//                         child: Text("Skip",style: TextStyle(fontSize: 20),),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 50,),
//                   Text("Fisio",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color: Colors.orange[700])),
//                   const SizedBox(height: 50,),
//                   Column(
//
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 24, right: 10,),
//                             child:  Container(
//                               // decoration: BoxDecoration(color: Colors.black12),
//                               child: Text(
//                                 // questionlist.questions[index]["questionText"].toString()
//                                 "1. Grand Central Terminal, Park Avenue, New York is the world's"
//                                 ,style: TextStyle(fontSize: 20),),
//                             ),),
//                           ListView.builder(
//                             shrinkWrap: true,
//                             itemCount: answer.bitLength,
//                             itemBuilder: (context, index) {
//
//                               return Container(
//                                 margin: const EdgeInsets.only(top: 25),
//                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//                                     // color: score[index] == 10 ? Colors.green : Colors.red,
//                                     border: const Border(top: BorderSide(style: BorderStyle.solid), bottom: BorderSide(style: BorderStyle.solid), left: BorderSide(style: BorderStyle.solid), right: BorderSide(style: BorderStyle.solid))),
//                                 child: Column(
//                                   children: [
//                                     // RadioListTile(
//                                     //   title: Text("jk"),
//                                     //   value: questionlist.questions[index]["answers"],
//                                     //   groupValue: selectedAnswerIndex,
//                                     //   onChanged: (value){
//                                     //     setState(() {
//                                     //       answer = index;
//                                     //       selectedAnswerIndex = value.toString();
//                                     //     });
//                                     //   },
//                                     // ),
//                                   ],
//                                 ),
//                               );
//                             },),
//                         ],
//                       ),
//
//
//                   const SizedBox(height: 40,),
//                   InkWell(
//                     onTap: () {
//                       if(qustion[answer] == score[answer]){
//                         // score
//                       }
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz2(),));
//                       // Get.to(() => const Quiz2());
//                     },
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.05,
//                       width: MediaQuery.of(context).size.width*0.5,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
//                       child: const Text("Next",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
//                     ),
//                   )
//                 ],
//               ),
//             )
//         ),
//           );
//   }
// }


// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MyPageController extends PageController {
  @override
  int get initialPage => 0;
}

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {

    PageController _controller = PageController(initialPage: 0);
    return PageView(
      // scrollDirection: Axis.vertical,
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: _controller,
      children: const <Widget>[
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    );
  }
}

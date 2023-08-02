import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuizAnswer extends StatefulWidget {
  const QuizAnswer({Key? key}) : super(key: key);

  @override
  State<QuizAnswer> createState() => _QuizAnswerState();
}

class _QuizAnswerState extends State<QuizAnswer> {
  List answer = [
    'A) largest railway station',
    'A) Bangkok',
    'B) Africa',
    'B) Diphu, Assam',
    'D) All of the above',

  ];  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: Text("QUIZ ANSWER",style: TextStyle(fontSize: 40,color: Colors.orange[700]),)
            ),
            SizedBox(height: 30,),
            ListView.builder(
              shrinkWrap: true,
                itemCount: answer.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.8,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                        child: Text(answer[index],style: TextStyle(fontSize: 25),),
                      ),
                    )
                  );
                },),
            Text("data"),
            InkWell(
              onHover: (value) {
                Color.fromARGB(255, 51, 0, 0);
              },
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.05,
                width: MediaQuery.of(context).size.width*0.5,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[700]),
                child: const Text("Exit",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
              ),
            ),

            // ElevatedButton(
            //   onHover: (value) {
            //     Color.fromARGB(255, 51, 0, 0);
            //   },
            //   child: Text('Exit',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.orange[700],
            //     onPrimary: Colors.white,
            //     shadowColor: Colors.red,
            //     elevation: 5,
            //   ),
            //
            // ),
          ],
        ),
    );
  }
}

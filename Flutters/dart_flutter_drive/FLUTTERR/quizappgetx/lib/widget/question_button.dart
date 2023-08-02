import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  const QuestionButton({Key? key, required this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 2,right: 20),
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.7,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.deepPurpleAccent[400]),
        child: Text(name,style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
    );
  }
}

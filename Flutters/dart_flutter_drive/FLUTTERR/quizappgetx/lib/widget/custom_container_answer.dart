import 'package:flutter/material.dart';

class CustomContainerAnswer extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  const CustomContainerAnswer({Key? key, required this.onPressed, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height*0.085,
        width: MediaQuery.of(context).size.width*0.18,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.greenAccent),
        child:  Text(name,style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateDriverDialog extends StatelessWidget {
  const RateDriverDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Column(
        children: [
          Icon(Icons.check_circle_rounded,color: Colors.green,size: 35,),
          Text("You service feedback success",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ],
      ),
      content: const Text("Thanks for your feedback an our service",style: TextStyle(fontSize: 15),),
      contentPadding: const EdgeInsets.only(left: 30,right: 27,top: 15,bottom: 15),
      actions: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Center(child: Text("OK",style: TextStyle(color: Colors.orange,fontSize: 18,fontWeight: FontWeight.w700),)),
        ),
      ],
    );
  }
}

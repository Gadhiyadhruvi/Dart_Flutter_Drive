import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rate_driver_item_bottomsheet.dart';

class RateDriverBottomSheet extends StatelessWidget {
  const RateDriverBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.back();
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller){
          return Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(28),topLeft: Radius.circular(28)),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.13,
                    height: MediaQuery.of(context).size.height*0.01,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                  ),
                  const Text("Rate Driver",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,letterSpacing: 0.8),),
                  const Divider(),
                  const CircleAvatar(maxRadius: 40),
                  const Text("Philippe Troussier"),
                  const Text("Excellent"),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Row(
                    children: [
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Good Service",style: TextStyle(color: Colors.black,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("On Time",style: TextStyle(color: Colors.white,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              padding: const EdgeInsets.only(left: 26,right: 26,top: 13,bottom: 13),
                              child: const Text("Clean",style: TextStyle(color: Colors.white,fontSize: 16),))),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Carefull",style: TextStyle(color: Colors.white,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Work Hard",style: TextStyle(color: Colors.black,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Polite",style: TextStyle(color: Colors.black,fontSize: 16),))),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 18),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.grey[300]),
                    child: const Text("Do you have something to share with Cook? Leave a review now! Your rating and comments will be displayed anonymousle."),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          elevation: 0,
                          context: context,
                          builder: (context){
                            return RateDriverItemBottomSheet();
                          }
                      );
                    },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.95,
                          margin: const EdgeInsets.only(top: 20,bottom: 20),
                          child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

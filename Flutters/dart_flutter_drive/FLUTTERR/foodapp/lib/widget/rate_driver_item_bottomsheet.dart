import 'package:flutter/material.dart';
import 'package:foodapp/widget/rate_driver_dialog.dart';
import 'package:get/get.dart';

class RateDriverItemBottomSheet extends StatelessWidget {
  const RateDriverItemBottomSheet({Key? key}) : super(key: key);

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
                              padding: const EdgeInsets.only(left: 19,right: 19,top: 13,bottom: 13),
                              child: const Text("Clean",style: TextStyle(color: Colors.black,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Good package",style: TextStyle(color: Colors.white,fontSize: 16),))),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                      GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 13,bottom: 13),
                              child: const Text("Pair Price",style: TextStyle(color: Colors.white,fontSize: 16),))),
                    ],
                  ),
                  GestureDetector(
                          child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              child: const Text("Work Hard",style: TextStyle(color: Colors.black,fontSize: 16),))),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 18),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.grey[300]),
                    child: Text("Do you have something to share with Cook? Leave a review now! Your rating and comments will be displayed anonymousle.",style: TextStyle(color: Colors.grey[600]),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.42,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Previous",style: TextStyle(color: Colors.black,fontSize: 18),))),
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context ){
                                  return RateDriverDialog();
                                });
                            },
                          child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.42,
                              margin: const EdgeInsets.only(top: 20,bottom: 20),
                              child: const Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),))),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

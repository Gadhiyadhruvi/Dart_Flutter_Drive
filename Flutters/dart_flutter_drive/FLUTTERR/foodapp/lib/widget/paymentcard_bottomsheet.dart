import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatmentCardBottomSheet extends StatelessWidget {
  const PatmentCardBottomSheet({Key? key}) : super(key: key);

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
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 5),
                    child: const Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Divider(),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.15,
                    decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Image(image: AssetImage("assets/fb.png"),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  const Text("Don't have any card",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  const Padding(
                    padding: EdgeInsets.only(left: 40,right: 12),
                    child: Text("It looks like you don't have a credit or debit card yet.Please add your cards."),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.07),
                  Container(
                    height: MediaQuery.of(context).size.height*0.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),color: Colors.grey[300]),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.09,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                    const Text("Visa"),
                                    const Text("Enter information on the card"),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.09,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                    const Text("Master Card"),
                                    const Text("Enter information on the card"),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.09,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const CircleAvatar(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                                    const Text("Paypal"),
                                    const Text("Enter email Paypal"),
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                                const Icon(Icons.arrow_forward_ios_rounded)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
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
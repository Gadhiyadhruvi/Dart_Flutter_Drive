import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/order_delivery_controller.dart';
import 'package:get/get.dart';

class OrderDeliveryDetailScreen extends GetView<OrderDeliveryController> {
  static String pageId = '/screenOrderDeliverDetail';

  OrderDeliveryDetailScreen({Key? key}) : super(key: key);

  final controller = Get.put(OrderDeliveryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image(
          //   image: const NetworkImage("https://tse2.mm.bing.net/th?id=OIP.Lz_Xw68Ep-69hYtvAGYkNAAAAA&pid=Api&P=0&h=180"),height: MediaQuery.of(context).size.height*1,fit: BoxFit.fill),
          Positioned(
              left: MediaQuery.of(context).size.width*0.04,
              right: MediaQuery.of(context).size.width*0.04,
              top: MediaQuery.of(context).size.height*0.4,
              bottom: MediaQuery.of(context).size.height*0.01,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.grey[100]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                              child: const Icon(Icons.cleaning_services_rounded,color: Colors.white30,),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivery Your Order"),
                                Text("Coming within 30 minutes"),
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Prime Beef - Pizza Beautiful..."),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.attach_money_sharp,color: Colors.orange,),
                                    const Text("20.99  ",style: TextStyle(color: Colors.orange),),
                                    Text("*  2 items  ",style: TextStyle(color: Colors.grey[600]),),
                                    Text("*  Credit Card",style: TextStyle(color: Colors.grey[600]),),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Container(
                                  padding: const EdgeInsets.only(left: 22,right: 22,top: 10,bottom: 10),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                                  child: const Text("Detail",style: TextStyle(color: Colors.white),)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.33,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.grey[100]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Column(
                              children: [
                                Icon(Icons.circle,color: Colors.orange,size: 18,),
                                Text("."),
                                Text("."),
                                Text("."),
                                Text("."),
                                Icon(Icons.location_on,color: Colors.orange,)
                              ],
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                            Column(
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height*0.023,),
                                const Text("Burger King - 1453 Ave Los Angeles",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                const Text("Restaurant - 13.00 PM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                                const Text("Burger King - 1453 Ave Los Angeles",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                const Text("Home - 13.30 PM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ],
                        ),
                        // Obx(() => Flexible(
                        //   child: SizedBox(
                        //     child:  EasyStepper(
                        //       alignment: Alignment.topLeft,
                        //       direction: Axis.vertical,
                        //       lineLength: 25,
                        //       activeStepBackgroundColor: Colors.orange,
                        //       activeStep: controller.current_step.value,
                        //       stepRadius: 12,
                        //       showLoadingAnimation: false,
                        //       steps: [
                        //         EasyStep(
                        //           customStep: Opacity(
                        //             opacity: controller.current_step.value >= 0 ? 1 : 0.3,
                        //             child: const Icon(Icons.circle,color: Colors.orange,),
                        //           ),
                        //           // customTitle: const Text(
                        //           //   '',
                        //           //   style: TextStyle(color: Colors.blue,fontSize: 12),
                        //           //   textAlign: TextAlign.center,
                        //           // ),
                        //         ),
                        //         EasyStep(
                        //           customStep: Opacity(
                        //             opacity: controller.current_step.value >= 1 ? 1 : 0.3,
                        //             child: const Icon(Icons.location_on,color: Colors.orange,),
                        //           ),
                        //           // customTitle: const Text(
                        //           //   '',
                        //           //   style: TextStyle(color: Colors.blue),
                        //           //   textAlign: TextAlign.center,
                        //           // ),
                        //         ),
                        //       ],
                        //       onStepReached: (index) =>
                        //       controller.current_step.value = index,
                        //     ),
                        //   ),
                        // ),
                        // ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.LWXAxMTEcHfBztD0iaYSzgHaHP&pid=Api&P=0&h=180"),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Philippe Troussier"),
                                Text("Delivery * 0145425765"),
                              ],
                            ),
                            GestureDetector(
                              child: Container(
                                  padding: const EdgeInsets.only(left: 15,right: 15,top: 14,bottom: 11),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.green),
                                  child: const Icon(Icons.call,color: Colors.white,)
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                  padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 11),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.orange[200]),
                                  child: const Icon(Icons.message,color: Colors.white,)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
        ]
      ),
    );
  }
}

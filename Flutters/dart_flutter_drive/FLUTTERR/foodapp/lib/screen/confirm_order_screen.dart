import 'dart:math';
import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/confirm_order_controller.dart';
import 'package:get/get.dart';
import '../get/controller/product_detail_controller.dart';
import '../widget/confirem_order_bottomsheet.dart';

class ConfirmOrderScreen extends GetView<ConfirmOrderController> {
  final String price;
  static String pageId = '/screenConfirmOrder';
  ConfirmOrderScreen({required this.price, Key? key}) : super(key: key);

  final controllerr = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Confirm Order"),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                padding: const EdgeInsets.only(left: 15),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Delivery to",style: TextStyle(fontSize: 20),),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(image:const NetworkImage("https://tse1.mm.bing.net/th?id=OIP.NjOfNSVM4o6eT4mq0aGBgAHaE7&pid=Api&P=0&h=180"),width: MediaQuery.of(context).size.width*0.27,height: MediaQuery.of(context).size.height*0.13,fit: BoxFit.fill,)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("(323) 238-0678"),
                            const Text("909-1/2 E 49th St"),
                            const Text("Los Angeles, California(CA),90011"),
                            Row(
                              children: [
                                Icon(Icons.location_on,color: Colors.grey[500],),
                                Text("15 km",style: TextStyle(color: Colors.grey[500],fontSize: 15,fontWeight: FontWeight.w400),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Burger King",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Image(image: const NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180"),width: MediaQuery.of(context).size.width*0.2),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("Prime Beef - Pizza Beautiful..."),
                                      Obx(() => Container(
                                        height: MediaQuery.of(context).size.height*0.05,
                                        width: MediaQuery.of(context).size.width*0.3,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                                onTap:() {
                                                  controllerr.counterr.value = max(controllerr.counterr.value - 1, 1);
                                                  int.parse(controllerr.counterr.value.toString()) > 1 ? Icons.delete_outline :
                                                  Container();
                                                },
                                                child: Icon(int.parse(controllerr.counterr.value.toString()) > 1 ? Icons.remove_circle : Icons.delete_outline,color: Colors.grey,size: 22,)
                                            ),
                                            Text(controllerr.counterr.value.toString(), textScaleFactor: 1.40),
                                            GestureDetector(
                                              onTap: (){
                                                controllerr.counterr.value++;
                                              },
                                              child: const Icon(Icons.add_circle,color: Colors.orange,),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                  const Icon(Icons.attach_money_outlined,color: Colors.orange,),
                                  Text(price,style: TextStyle(color: Colors.orange),)
                                ],
                              ),
                              Divider(color: Colors.grey[300],)
                            ],
                          );
                        },),
                    Divider(color: Colors.grey[100]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Subtotal (2 items)"),
                        SizedBox(width: MediaQuery.of(context).size.width*0.37,),
                        const Icon(Icons.attach_money),
                        const Text("36.98",style: TextStyle(fontSize: 18),),
                      ],),
                    Divider(color: Colors.grey[100]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery"),
                        SizedBox(width: MediaQuery.of(context).size.width*0.55,),
                        const Icon(Icons.attach_money),
                        const Text("0.00",style: TextStyle(fontSize: 18),),
                      ],),
                    Divider(color: Colors.grey[100]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Voucher"),
                        SizedBox(width: MediaQuery.of(context).size.width*0.37,),
                        const Icon(Icons.remove,size: 15,),
                      ],),
                    Divider(color: Colors.grey[100]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total"),
                        SizedBox(width: MediaQuery.of(context).size.width*0.57,),
                        const Icon(Icons.attach_money,color: Colors.orange,),
                        const Text("36.98",style: TextStyle(fontSize: 18,color: Colors.orange),),
                      ],),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.percent,color: Colors.orange,),
                    const Text("Add Voucher"),
                    SizedBox(width: MediaQuery.of(context).size.width*0.25),
                    Container(
                      height: MediaQuery.of(context).size.height*0.04,
                      width: MediaQuery.of(context).size.width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange[50]),
                      child: const Text("Add",style: TextStyle(color: Colors.orange),),
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height*0.23,
                  padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                  color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[50]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.monetization_on,color: Colors.blue[900],),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money_rounded,color: Colors.orange,),
                                      Text("36.98",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Text("Paypal",style: TextStyle(color: Colors.orange,fontSize: 15),)
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          width: MediaQuery.of(context).size.width*0.4,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.monitor_heart_sharp,color: Colors.green[300],),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money_rounded,color: Colors.black87,),
                                      Text("36.98",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                  Text("Cash",style: TextStyle(color: Colors.grey,fontSize: 15),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            elevation: 0,
                            enableDrag: true,
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (contaxt) {
                              return ConfirmOrderBottomSheet();
                            });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.84,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange),
                        child: const Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      )
    );
  }
}
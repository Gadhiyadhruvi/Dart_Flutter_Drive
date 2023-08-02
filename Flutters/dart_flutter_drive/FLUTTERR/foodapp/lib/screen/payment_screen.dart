import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/payment_method_controller.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends GetView<PaymentMethodController> {
  static String pageId = '/screenPayMentMethod';
  PaymentMethodScreen({Key? key}) : super(key: key);

  final controller = Get.put(PaymentMethodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,),
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
              const Text("It looks like you don't have a credit or debit card yet.Please add your cards."),
              SizedBox(height: MediaQuery.of(context).size.height*0.28),

              Container(
                height: MediaQuery.of(context).size.height*0.3,
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),color: Colors.grey),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

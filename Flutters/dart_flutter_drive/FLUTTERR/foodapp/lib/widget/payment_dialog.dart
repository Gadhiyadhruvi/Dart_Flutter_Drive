import 'package:flutter/material.dart';
import 'package:foodapp/screen/order_delivery_detail_screen.dart';
import 'package:get/get.dart';

class PaymentDialogBox extends StatelessWidget {
  const PaymentDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Column(
        children: [
          Icon(Icons.check_circle_rounded,color: Colors.green,size: 35,),
          Text("You Ordered successfully",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ],
      ),
      content: const Text("You successfully place an order, your order is confirmed and delivered within 20 minutes. \n Wish you enjoy the food.",style: TextStyle(fontSize: 15),),
      contentPadding: const EdgeInsets.only(left: 28,right: 25,top: 20,bottom: 20),
      actions: [
        GestureDetector(
          onTap: () {
            Get.back();
            Get.to(() => OrderDeliveryDetailScreen());
          },
          child: const Text("KEEP BROWSING",style: TextStyle(color: Colors.orange,fontSize: 18,fontWeight: FontWeight.w700),),
        ),
      ],
    );
  }

}

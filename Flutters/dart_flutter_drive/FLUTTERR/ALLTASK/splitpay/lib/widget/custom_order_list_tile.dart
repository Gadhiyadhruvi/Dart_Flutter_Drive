import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/recent_order_controller.dart';
import 'package:splitpay/widget/custom_button_secondary.dart';
import '../resource/colors.dart';
import 'custom_alertdialog.dart';
import 'custom_button_primary.dart';

class OrderListTile extends StatelessWidget {
  final int index;
  final RecentOrderController _controller = Get.find();
  OrderListTile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 1,color: AppColors.borderColor),),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Order No :",style: TextStyle(color: Colors.black)),
                    const Text("10002600888",style: TextStyle(color: Colors.black)),
                    const SizedBox(width: 24,),
                    const Text("Patment status : ",style: TextStyle(color: Colors.black)),
                    Text(index % 2 == 0 ? 'Unpaid' : 'Paid',style: TextStyle(color: index % 2 == 0 ? Colors.redAccent : Colors.green),),
                  ],
                ),
                Row(
                  children: [
                    const Text("Customer :",style: TextStyle(color: Colors.black)),
                    const Text("ABC",style: TextStyle(color: Colors.black)),
                    SizedBox(width: MediaQuery.of(context).size.width*0.24,),
                    const Text("Order Type : ",style: TextStyle(color: Colors.black)),
                    const Text(" Dine in | 4 ",style: TextStyle(color: Colors.black),),
                  ],
                ),
                const Row(
                  children: [
                    Text("Order create date :",style: TextStyle(color: Colors.black)),
                    SizedBox(width: 5,),
                    Text("27/9/2022 | 11:55am ",style: TextStyle(color: Colors.black)),
                  ],
                ),
                const Row(
                  children: [
                    Text("Total :",style: TextStyle(color: Colors.orangeAccent)),
                    SizedBox(width: 5,),
                    Text("16.00 SAR",style: TextStyle(color: Colors.orangeAccent)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecondaryButtonScreen(name: 'Ready to Diliver', onPressed: () {}),
                    PrimaryButtonScreen(name: 'Send to Kitchen', onPressed: () {
                      CustomAlertDialog(context);
                    })
                  ],
                )
          ],
        )),
      ),
    );
  }
}

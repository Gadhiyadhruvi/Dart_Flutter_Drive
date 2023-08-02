import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/order_detail_controller.dart';
import 'package:splitpay/resource/colors.dart';
import 'package:splitpay/widget/custom_button_primary.dart';
import 'package:splitpay/widget/custom_checkbox.dart';
import '../model/order_status.dart';
import '../widget/custom_alertdialog.dart';
import '../widget/custom_dropdown_order.dart';

class OrderDetailScreen extends GetView<OrderDetailController> {
  static String pageId = '/screenOrderDetail';
  final List<String> items = OrderItem.items;
  final controller = Get.put(OrderDetailController());

  // OrderDetailScreen({});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order No : 10002600888"),
        elevation: 2,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.08,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
                  border: Border(right: BorderSide(color: AppColors.borderColor),left: BorderSide(color: AppColors.borderColor),bottom: BorderSide(color: AppColors.borderColor),top: BorderSide(color: AppColors.borderColor))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Order type : Dine in | 4"),
                  PrimaryButtonScreen(
                      name: 'Send to Kitchen',
                      onPressed: () {
                        CustomAlertDialog(context);
                      }),
                ],
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Customer :",style: TextStyle(color: AppColors.textDarkColor,fontWeight: FontWeight.w500,fontSize: 16)),
              Text("ABC",style: TextStyle(color: AppColors.textHintColor,fontSize: 16)),
              const SizedBox(width: 40,),
              Text("Patment status : ",style: TextStyle(color: AppColors.textDarkColor,fontSize: 16)),
              Text('Unpaid' ,style: TextStyle(color: AppColors.txtPayStatUnpayColor,fontSize: 16 ),),
            ],
          ),
          Row(
            children: [
              Text("Order create date :",style: TextStyle(color: AppColors.textDarkColor,fontWeight: FontWeight.w500,fontSize: 16)),
              const SizedBox(width: 5,),
              Text("27/9/2022 | 11:55am ",style: TextStyle(color: AppColors.textHintColor,fontWeight: FontWeight.w500,fontSize: 16)),
            ],
          ),
          Row(
            children: [
              Text("Order Status :",style: TextStyle(color: AppColors.textDarkColor,fontWeight: FontWeight.w500,fontSize: 16)),
              Text("New",style: TextStyle(color: AppColors.txtOrderStatColor,fontWeight: FontWeight.w500,fontSize: 16)),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Items  ",style: TextStyle(color: AppColors.textDarkColor,fontWeight: FontWeight.w600,fontSize: 18)),
              const SizedBox(width: 130,),
              Text("Select all",style: TextStyle(color: AppColors.textHintColor,fontWeight: FontWeight.w500,fontSize: 16)),
              Obx(() => CheckBoxScreen(
                onChanged: (value) { controller.isSelected.value = value!; },
                isChecked: controller.isSelected.value,),),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/images/image.png'),
               Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      const Text("Item : "),
                      const Text("Cafe Mocha"),
                      const SizedBox(width: 122,),
                      Obx(() => CheckBoxScreen(
                        onChanged: (value) { controller.isSelected.value = value!; },
                        isChecked: controller.isSelected.value,),),
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Qty :"),
                      Text("1"),
                      SizedBox(width: 215,)
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Unit price :"),
                      Text("16.00 SAR"),
                      SizedBox(width: 117,)
                    ],
                  ),
                ],
              ),
            ]
          ),
          Row(
            children: [
              DropDownOrderScreen(items: items,),
              const SizedBox(width: 5,),
              PrimaryButtonScreen(name: 'Ready to Delivery', onPressed: (){})
            ],
          ),
          Stack(
            children: [
              Image.asset('assets/images/curve.png'),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total without tax :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white),),
                            Text("13.04 SAR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tax :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white)),
                            Text("1.96 SAR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Discount :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white)),
                            Text("0.00 SAR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.white))
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Amount :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
                            Text("16.00 SAR",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
                          ],
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/recent_order_controller.dart';
import 'package:splitpay/screens/order_detail_screen.dart';
import 'package:splitpay/widget/custom_order_list_tile.dart';

class RecentOrderScreen extends GetView<RecentOrderController> {
  static String pageId = '/screenRecentOrder';
  final controller = Get.put(RecentOrderController());

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(OrderDetailScreen.pageId);
            },
            child: OrderListTile(index: index,),
          );
        },
      ),
    );
  }
}

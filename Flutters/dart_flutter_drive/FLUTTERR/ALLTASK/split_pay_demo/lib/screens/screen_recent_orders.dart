import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/get/screens.dart';

import 'package:split_pay_demo/widgets/custom_order_list_tile.dart';

class RecentOrderScreen extends GetView {
  static String pageId = '/screenRecentOrders';
  final RecentOrdersController controllerr = Get.put(RecentOrdersController());

   RecentOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index) {
        return  InkWell(
          onTap: () {
            Get.toNamed(OrderDetailsScreen.pageId,);
          },
            child: CustomOrderListTile(index: index,),
        );
      },
      ),
    );
  }
}


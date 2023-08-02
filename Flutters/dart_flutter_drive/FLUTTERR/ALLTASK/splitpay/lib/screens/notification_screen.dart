import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/notification_controller.dart';

class Notification_Screen extends GetView<NotificationController> {
  static String pageId = '/screenNotification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Text("New Order     "),
                                  SizedBox(height: 3,),
                                  Text("  #10002600887"),
                                  SizedBox(height: 5,),
                                ]
                            ),
                            Text("29-09-2022   "),
                          ]
                      ),
                      Divider(color: Colors.black, thickness: 1,),
                    ],
                  )
                );
              },)
    );
  }
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class NotificationsScreen extends GetView {
  static String pageId = '/screenNotifications';

  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),

          child: Column(
            children: [
              ListTile(title: Text('New order',style: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColors.textDarkColor),),
                subtitle: Text('#10002600887',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.textDarkColor)),
                trailing: Text('29-09-2022',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.textDarkColor)),
              ),
              Divider(color: AppColors.borderColor,thickness: 1),
            ],
          ),
        );
      })
    );
  }
}

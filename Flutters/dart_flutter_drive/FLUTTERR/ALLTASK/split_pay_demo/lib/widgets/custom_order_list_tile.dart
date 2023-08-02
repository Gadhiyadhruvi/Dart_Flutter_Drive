import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import 'package:split_pay_demo/widgets/custom_alertdialog_send_to_kitchen.dart';
import 'package:split_pay_demo/widgets/custom_btn_primary.dart';
import 'package:split_pay_demo/widgets/custom_btn_secondary.dart';

class CustomOrderListTile extends StatelessWidget {

   final int index;
   final RecentOrdersController _controller = Get.find();
   CustomOrderListTile({Key? key, required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(width: 1,color: AppColors.borderColor),),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      Text('Order No:', overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.textDarkColor),),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('10002600888', overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textDarkColor),),
                    ],
                  ),
                  Row(
                    children:  [
                      Text('Payment status:',overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.textDarkColor),),
                      const SizedBox(width: 5,),
                      Text(index % 2 == 0 ? 'Unpaid' : 'Paid', overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: index % 2 == 0 ?  AppColors.txtPayStatUnpayColor : AppColors.txtPayStatpayColor),),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      Text('Customer:',overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.textDarkColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('Sumant', overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textDarkColor),),
                    ],
                  ),
                  Row(
                    children:  [
                      Text('Order type:',overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.textDarkColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('Dine in | 4',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textDarkColor),),
                    ],
                  )
                ],
              ),
              Row(
                children:  [
                  Text('Order create date:',overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.textDarkColor),),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('27/9/2022 | 11:55am', overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.textDarkColor),
                  ),
                ],
              ),
              Row(
                children:  [
                  Text('Total:',overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.primaryColor),),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('16.00 SAR', overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor),),
                ],
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonSecondary(onBtnPress: (){}, btnTitle: 'Ready to Deliver'),
                  CustomButtonPrimary(onBtnPress: (){
                    customAlertDialogSendToKitchen(context);
                    }, btnTitle: 'Send to Kitchen',),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

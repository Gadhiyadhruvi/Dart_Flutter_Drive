import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import 'package:split_pay_demo/widgets/custom_btn_primary.dart';
import 'package:split_pay_demo/widgets/custom_btn_secondary.dart';
import 'package:split_pay_demo/widgets/custom_checkbox.dart';


Future<void> customAlertDialogSendToKitchen(BuildContext context) async {
  final OrderDetailsController controller = Get.put(OrderDetailsController());

  return showDialog(context: context,
      barrierDismissible: false,

      builder: (_) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Builder(
            builder: (_) {
              var width = MediaQuery
                  .of(context)
                  .size
                  .width;
              return SizedBox(
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Select Kitchen', style: Theme
                            .of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                        SizedBox(height: 26,
                          width: 26,
                          child: IconButton(onPressed: () {
                            Navigator.pop(context);
                          },
                              icon: SvgPicture.asset(
                                'assets/images/cross.svg',
                                color: AppColors.textDarkColor,
                                fit: BoxFit.fill,)),),
                      ],
                    ),
                    Divider(height: 30,
                        color: AppColors.borderColor,
                        thickness: 1),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('General Kitchen', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                        Obx(() {
                          return CustomCheckBox(onChanged: (value) {
                            controller.isCheckedGeneralKitchen.value = value!;
                          },
                              isChecked: controller.isCheckedGeneralKitchen
                                  .value);
                        }),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Chinese Kitchen', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                        Obx(() {
                          return CustomCheckBox(onChanged: (value) {
                            controller.isCheckedChineseKitchen.value = value!;
                          },
                            isChecked: controller.isCheckedChineseKitchen
                                .value,);
                        }),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('American Kitchen', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                        Obx(() {
                          return CustomCheckBox(onChanged: (value) {
                            controller.isCheckedAmericanKitchen.value = value!;
                          },
                            isChecked: controller.isCheckedAmericanKitchen
                                .value,);
                        }),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Swedish Kitchen', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                        Obx(() {
                          return CustomCheckBox(onChanged: (value) {
                            controller.isCheckedSwedishKitchen.value = value!;
                          },
                            isChecked: controller.isCheckedSwedishKitchen
                                .value,);
                        }),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          actions: [
            Container(padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: CustomButtonSecondary(onBtnPress: () {
                    Navigator.pop(context);
                  }, btnTitle: 'Cancel')),
                  const SizedBox(width: 5,),
                  Expanded(child: CustomButtonPrimary(onBtnPress: () {
                    Navigator.pop(context);
                    showDialog(context: context,
                      builder: (_) {
                        return SimpleDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),
                          contentPadding: const EdgeInsets.all(15),
                          children: [
                            Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/thanks check.svg'),
                                    const SizedBox(height: 20,),
                                    Text('Thanks!', style: Theme
                                        .of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 30,
                                        color: AppColors.textDarkColor),),
                                    const SizedBox(height: 20,),
                                    Text(
                                      'The order has been sent to the kitchen.',
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                          color: AppColors.textDarkColor),),
                                  ],),
                                Positioned(
                                  top: 0, right: 0,
                                  child: InkWell(onTap: () {
                                    Navigator.pop(context);
                                  },
                                      child: SvgPicture.asset(
                                        'assets/images/cross.svg', width: 15,
                                        height: 15,)),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  }, btnTitle: 'Send to Kitchen'))
                ],
              ),
            ),
          ],
        );
      });
}
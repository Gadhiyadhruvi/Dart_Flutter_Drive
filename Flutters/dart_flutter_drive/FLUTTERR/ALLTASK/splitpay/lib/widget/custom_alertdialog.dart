// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/order_detail_controller.dart';

import '../resource/colors.dart';
import 'custom_button_primary.dart';
import 'custom_button_secondary.dart';
import 'custom_checkbox.dart';

Future<void> CustomAlertDialog(BuildContext context) async {

  final OrderDetailController controller = Get.put(OrderDetailController());

  return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: SizedBox(
            height: MediaQuery.of(context).size.height*0.2,
            width: double.maxFinite,
            child: Builder(
              builder: (_) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Select Kitchen"),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(Icons.close),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("General Kitchen"),
                        Obx(() => CheckBoxScreen(
                          onChanged: (value) { controller.isSelectedgeneralkichen.value = value!; },
                          isChecked: controller.isSelectedgeneralkichen.value,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Chinese Kitchen"),
                        Obx(() => CheckBoxScreen(
                          onChanged: (value) { controller.isSelectedchinesekichen.value = value!; },
                          isChecked: controller.isSelectedchinesekichen.value,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("American Kitchen"),
                        Obx(() => CheckBoxScreen(
                          onChanged: (value) { controller.isSelectedamericankichen.value = value!; },
                          isChecked: controller.isSelectedamericankichen.value,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Swedish Kitchen"),
                        Obx(() => CheckBoxScreen(
                          onChanged: (value) { controller.isSelectedswedishkichen.value = value!; },
                          isChecked: controller.isSelectedswedishkichen.value,),),
                      ],
                    ),
                  ],
                );
              },
            ),
          )
          ,
          actions: [
              Row(
                children: [
                  Expanded(
                      child: SecondaryButtonScreen(
                        name: 'Cancel',
                        onPressed: () {
                          Get.back();
                          // Navigator.pop(context);
                          },
                  )),
                  const SizedBox(width: 15,),
                  Expanded(
                      child: PrimaryButtonScreen(
                          onPressed: () {
                            Get.back();
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
                  }, name: 'Send to Kitchen'))
                ],
              ),
          ],
        );
      });
}

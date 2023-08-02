import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/models/model_order_status.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import 'package:split_pay_demo/widgets/custom_alertdialog_send_to_kitchen.dart';
import 'package:split_pay_demo/widgets/custom_btn_primary.dart';
import 'package:split_pay_demo/widgets/custom_dropdown_order.dart';

class OrderDetailsScreen extends GetView<OrderDetailsController> {
  static String pageId = '/screenOrderDetails';
  final controllerr = Get.put(OrderDetailsController());
  final List<String> items = OrderStatusItem.items;

  OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Order No:10002600888',
              style: Theme
                  .of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: AppColors.textDarkColor),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/images/back button.svg',
              color: AppColors.textDarkColor),
        ),
        backgroundColor: AppColors.white,
      ),
      body: Obx(()=>Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Order type:', style: Theme
                            .of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: AppColors.textDarkColor),),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('Dine in | 4', style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: AppColors.textDarkColor),),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButtonPrimary(
                            onBtnPress: () {
                              customAlertDialogSendToKitchen(context);
                            }, btnTitle: 'Send to Kitchen'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Customer:', style: Theme
                          .of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.textDarkColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text('Sumant', style: Theme
                          .of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: AppColors.textDarkColor),),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            'Payment status:', style: Theme
                              .of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: AppColors.textDarkColor),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('Unpaid', style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                              color: AppColors.txtPayStatUnpayColor),),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Order create date:', style: Theme
                      .of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: AppColors.textDarkColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('27/9/2022 | 11:55am', style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppColors.textDarkColor),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Order status:', style: Theme
                      .of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: AppColors.textDarkColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('New', style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppColors.txtOrderStatColor),),
                ],
              ),
              Divider(thickness: 1, color: AppColors.borderColor, height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Items', style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColors.textDarkColor),),
                  Row(
                    children: [
                      Text('Select all', style: Theme
                          .of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: AppColors.textDarkColor),),
                      const SizedBox(width: 10,),
                      SizedBox(height: 24, width: 24,
                        child: Checkbox(
                          side: BorderSide(color: AppColors.borderColor),
                          value: controllerr.isCheckedSelectAll.value,
                          onChanged: (value) {
                            controllerr.isCheckedSelectAll.value = value!;
                            controllerr.isCheckedItem.value = value;
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              CustomContainerOrderItem(),
              const SizedBox(height: 10,),
              Row(mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: size.width * 0.45, height: 40,
                    child: DropdownButtonHideUnderline(
                      child: CustomDropDownOrder(items: items),),),
                  CustomButtonPrimary(
                      onBtnPress: () {}, btnTitle: 'Ready for Delivery'),
                ],
              ),
              const SizedBox(height: 15,),
              Stack( //fit: StackFit.loose,
                  children: [
                    Image.asset('assets/images/curve.png'),
                    Positioned.fill(
                        child: Container(padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                          height: size.height * 0.25,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text('Total without tax:', style: Theme
                                      .of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(color: AppColors.white),),
                                  Text('13.04 SAR', style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: AppColors.white),)
                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [Text('Tax:', style: Theme
                                    .of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(color: AppColors.white),),
                                  Text('1.96 SAR', style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: AppColors.white),)
                                ],),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [Text('Discount:', style: Theme
                                    .of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(color: AppColors.white),),
                                  Text('0.00 SAR', style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: AppColors.white),)
                                ],),
                              Divider(color: AppColors.dividerOrder),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [Text('Total Amount', style: Theme
                                    .of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(color: AppColors.primaryColor),),
                                  Text('16.00 SAR', style: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: AppColors.primaryColor),)
                                ],),
                            ],),
                        )),

                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainerOrderItem extends StatelessWidget {
  final OrderDetailsController controllerr = Get.find();

  CustomContainerOrderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        SizedBox(height: 90,
          child: Row(
            children: [
              Image.asset('assets/images/image.png'),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Item:', style: Theme
                                .of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: AppColors.textDarkColor),),
                            const SizedBox(width: 5,),
                            Text('Café Mocha', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: AppColors.textDarkColor),),
                          ],
                        ),
                        SizedBox(height: 24, width: 24,
                          child: Checkbox(
                            side: BorderSide(color: AppColors.borderColor),
                            value: controllerr.isCheckedItem.value,
                            onChanged: (value) {
                              controllerr.isCheckedItem.value = value!;
                              controllerr.isCheckedSelectAll.value = value;
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    //Expanded(child: SizedBox.shrink()),
                    Row(
                      children: [
                        Text(
                          'Qty:', style: Theme
                            .of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.textDarkColor),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('1', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                      ],
                    ),
                    const Spacer(),
                    //const SizedBox(height: 15,),
                    Row(
                      children: [
                        Text(
                          'Unit price:', style: Theme
                            .of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.textDarkColor),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('16.00 SAR', style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.textDarkColor),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

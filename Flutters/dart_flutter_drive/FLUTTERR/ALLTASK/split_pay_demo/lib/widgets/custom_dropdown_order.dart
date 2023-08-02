import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

import '../models/menu_item.dart';

class CustomDropDownOrder extends StatelessWidget {
  CustomDropDownOrder( {
    Key? key,
    required this.items,
  }) : super(key: key);
  final List<String> items;

  final  controllerr = Get.put(OrderDetailsController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButton2(
        items: items
            .map((item) =>
            DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.textDarkColor),
                overflow: TextOverflow.ellipsis,
              ),
            ))
            .toList(),
        value: controllerr.selectedDropItem.value,
        iconOnClick: SvgPicture.asset('assets/images/dropdown 1.svg'),
        onChanged: (value) {
          controllerr.selectedDropItem.value = value as String;
        },
      icon: SvgPicture.asset('assets/images/dropdown.svg'),
        iconSize: 14,
        iconDisabledColor: Colors.grey,
        buttonPadding: const EdgeInsets.all(5),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.textDarkColor,
          ),
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        dropdownElevation: 8,
      )
    );
  }
}

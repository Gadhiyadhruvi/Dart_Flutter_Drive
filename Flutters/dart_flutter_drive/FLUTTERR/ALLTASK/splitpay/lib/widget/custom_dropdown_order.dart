import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/order_detail_controller.dart';
import 'package:splitpay/resource/colors.dart';

class DropDownOrderScreen extends StatelessWidget {
  final List<String> items;
  DropDownOrderScreen({Key? key, required this.items}) : super(key: key);

  final controller = Get.put(OrderDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButton2(
      items: items
          .map((item) =>
          DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(fontSize: 20)
            ),
          ))
          .toList(),
      value: controller.SelectedDropDown.value,
      onChanged: (value) {
        controller.SelectedDropDown.value = value!;
      },

      // iconStyleData: SvgPicture.asset('assets/images/dropdown 1.svg'),

      // iconOnClick: SvgPicture.asset('assets/images/dropdown 1.svg'),
      // onChanged: (value) {
      //   controller.SelectedDropDown.value = value as String;
      // },
      // icon: SvgPicture.asset('assets/images/dropdown.svg'),
      // iconSize: 14,
      // iconDisabledColor: Colors.grey,
      // buttonPadding: const EdgeInsets.all(5),
      // buttonDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   border: Border.all(
      //     color: AppColors.textDarkColor,
      //   ),
      // ),
      // itemHeight: 40,
      // itemPadding: const EdgeInsets.only(left: 14, right: 14),
      // dropdownPadding: null,
      // dropdownDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      // dropdownElevation: 8,
    )
    );
  }
}

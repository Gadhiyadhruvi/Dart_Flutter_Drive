import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import '../models/menu_item.dart';

class CustomDropDown extends StatelessWidget {
   CustomDropDown({ Key? key, required this.items,}) : super(key: key);

  final List<MenuItemss> items;
  final DashboardController controllerr = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton2(
        items: items
            .map((item) =>
            DropdownMenuItem<MenuItemss>(
              value: item,
              child: Row(
                children: [
                  SvgPicture.asset(item.icon),
                  const SizedBox(width: 5,),
                  Text(
                    item.text,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.textHintColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ))
            .toList(),
        value: controllerr.selectedDropItem.value,
      iconOnClick:  SvgPicture.asset('assets/images/dropdown 1.svg'),
        onChanged: (value) {
              controllerr.selectedDropItem.value = value!;
        },
        icon: SvgPicture.asset('assets/images/dropdown.svg'),
        iconSize: 14,
        iconEnabledColor: AppColors.textDarkColor,
        iconDisabledColor: Colors.grey,
        buttonHeight: 30,
        buttonWidth: 100,
      selectedItemHighlightColor: AppColors.dropDownBGColor,
        buttonPadding: const EdgeInsets.all( 5),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.dropDownBGColor,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 100,
        dropdownWidth: 104,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        dropdownElevation: 8,
      ),
    );
  }
}

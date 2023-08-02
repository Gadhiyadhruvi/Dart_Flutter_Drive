import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:splitpay/get/controller/dashboard_controller.dart';
import 'package:splitpay/model/menu_item.dart';

import '../model/data_menu_item.dart';

class DropDownScreen extends StatelessWidget {
  final List<Menuitems> items;

  DropDownScreen({Key? key, required this.items}) : super(key: key);

  final DashBoardController controller = Get.find();
  MenuItems? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton2(

      items: items
          .map((item) =>
          DropdownMenuItem<Menuitems>(
            value: item,
            child: Row(
              children: [
                SvgPicture.asset(item.icons),
                const SizedBox(width: 5,),
                Text( item.text,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith( color: item != controller.selectedDropItem.value ? Colors.blue : Colors.red,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ))
          .toList(),
      value: controller.selectedDropItem.value,
      onChanged: (value) {
        controller.selectedDropItem.value = value!;

      },
     ),
    );
  }
}

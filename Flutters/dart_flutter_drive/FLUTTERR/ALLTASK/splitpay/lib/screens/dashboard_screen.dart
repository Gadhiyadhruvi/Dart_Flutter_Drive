import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller.dart';
import '../model/data_menu_item.dart';
import '../model/menu_item.dart';
import '../resource/colors.dart';
import '../widget/custom_bottom_nav.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_logoutdialog.dart';
import 'notification_screen.dart';
import 'recent_order_screen.dart';

class DashBoardScreen extends GetView<DashBoardController> {
  static String pageId = '/screenDashboard';

  DashBoardScreen({Key? key}) : super(key: key);

  final controller = Get.put(DashBoardController());
  final List<Menuitems> items = MenuItems.items;
  final screens = [
    RecentOrderScreen(),
    Notification_Screen(),
    Container()
    ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
       onWillPop: () async {
         return false;
       },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 3,
          backgroundColor: Colors.white,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75,
                    width: 75,
                    child: Image.asset('assets/images/store_logo.png')),
                const SizedBox(width: 35,),
                Text("Powerd by ABC",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.textDarkColor,
                ),),
                const SizedBox(width: 8,),
                DropdownButtonHideUnderline(
                  child: DropDownScreen(items: items, ),)
              ],
            )        ),
      body: Obx(() => IndexedStack(
            index: controller.isSelectedindex.value,
            children: List.from(screens),
          )
      ),
      bottomNavigationBar: Container(
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomBottomNavigation(controller: controller,))),
    ),
    );
  }
}

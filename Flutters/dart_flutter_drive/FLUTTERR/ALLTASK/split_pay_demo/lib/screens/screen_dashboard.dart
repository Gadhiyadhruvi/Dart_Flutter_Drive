import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/get/screens.dart';
import 'package:split_pay_demo/models/data_menu_items.dart';
import 'package:split_pay_demo/resources/app_colors.dart';
import 'package:split_pay_demo/widgets/custom_bottom_nav_bar.dart';
import '../models/menu_item.dart';
import '../widgets/custom_dropdown.dart';

class DashBoardScreen extends GetView<DashboardController> {
  static String pageId = '/screenDashboard';
  DashBoardScreen({Key? key}) : super(key: key);

  final controllerr = Get.put(DashboardController());
  final List<MenuItemss> items = MenuItems.items;
  final screens = [ RecentOrderScreen(), const NotificationsScreen()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{ return false; },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 7,
          backgroundColor: AppColors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  height: 75,
                  width: 75,
                  child: Image.asset('assets/images/store_logo_100000.jpg')),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Powered by Sumant',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.textHintColor,
                    ),
              ),
              const SizedBox(
                width: 10,
              ),
              DropdownButtonHideUnderline(
                child: CustomDropDown(items: items,),
              ),
            ],
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: controllerr.selectedIndex.value,
            children: screens,
          ),
        ),
        bottomNavigationBar: Container(
            margin: const EdgeInsets.all(8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomBottomNavBar(controllerr: controllerr))),
      ),
    );
  }
}

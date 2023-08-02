import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';
import 'package:split_pay_demo/get/screens.dart';
import 'package:split_pay_demo/resources/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.controllerr,
  }) : super(key: key);

  final DashboardController controllerr;

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
        backgroundColor: AppColors.textDarkColor,
        selectedItemColor: AppColors.primaryColor,
        selectedLabelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(color: AppColors.primaryColor),
        unselectedItemColor: AppColors.white,
        unselectedLabelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.normal),
        currentIndex: controllerr.selectedIndex.value,
        onTap: (index) {
          if (index == 2) {
            Get.toNamed(LoginScreen.pageId);
            controllerr.selectedIndex.value = 0;
          } else {
            controllerr.changeIndex(index);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Recent Orders.svg'),
              label: 'Recent Orders',
              activeIcon: SvgPicture.asset(
                  'assets/images/Recent Orders selected.svg')),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Notifications.svg'),
              label: 'Notifications',
              activeIcon: SvgPicture.asset(
                  'assets/images/Notification selected.svg')),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/logout.svg'),
            label: 'Logout',),
        ],
      ),
    );
  }
}
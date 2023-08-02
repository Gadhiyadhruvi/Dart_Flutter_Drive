import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../get/controller.dart';
import '../resource/colors.dart';
import '../screens/login_screen.dart';
import 'custom_logoutdialog.dart';

class CustomBottomNavigation extends StatelessWidget {
  final DashBoardController controller;
  const CustomBottomNavigation({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      backgroundColor: AppColors.textDarkColor,
      currentIndex: controller.isSelectedindex.value,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.white,
      selectedLabelStyle: TextStyle(color: AppColors.primaryColor),
      unselectedLabelStyle: TextStyle(color: AppColors.white),
      onTap: (index) {

        if (index == 2) {
          LogoutDialog(context);
          controller.isSelectedindex.value = 0;

        } else {
          controller.selectedIndex(index);
        }
      },
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Recent Orders.svg'),
            label: "Recent Orders",
            activeIcon: SvgPicture.asset(
                'assets/images/Recent Orders selected.svg')
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Notifications.svg'),
            label: 'Notifications',
            activeIcon: SvgPicture.asset(
                'assets/images/Notification selected.svg')),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/logout.svg'),
          label: 'Logout',
          activeIcon: SvgPicture.asset('assets/images/logout.svg',color: AppColors.primaryColor,)
        ),
      ],
    ));
  }
}

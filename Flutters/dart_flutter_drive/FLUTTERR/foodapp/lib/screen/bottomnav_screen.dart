import 'package:flutter/material.dart';
import 'package:foodapp/screen/category_screen.dart';
import 'package:foodapp/screen/foodmain_screen.dart';
import 'package:foodapp/screen/profile_screen.dart';
import 'package:get/get.dart';
import '../get/controller.dart';

class BottomNavScreen extends GetView<BottomNavController> {
  static String pageId = '/screenBottomNav';
  BottomNavScreen({Key? key}) : super(key: key);

  final controller = Get.put(BottomNavController());

  Widget? pages(int index){
    switch(index){
      case 0:
        {
          return  FoodMainScreen();
        }
      case 1:
        {
          return CategoryScreen();
        }
      case 2:
        {
          return ProfileScreen();
        }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages(controller.currentIndex.value),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        elevation: 10,
        selectedIconTheme: const IconThemeData(color: Colors.blue, size: 30),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex.value,
        onTap: controller.updateIndex, //New
      ),
    ));
  }
}
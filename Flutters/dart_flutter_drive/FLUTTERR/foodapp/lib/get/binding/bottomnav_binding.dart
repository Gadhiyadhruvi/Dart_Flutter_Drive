import 'package:foodapp/get/controller/bottomnav_controller.dart';
import 'package:get/get.dart';

class BottomNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }

}
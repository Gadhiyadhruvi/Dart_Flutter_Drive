import 'package:foodapp/get/controller/foodmain_controller.dart';
import 'package:get/get.dart';

class FoodMainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodMainController>(() => FoodMainController());
  }

}
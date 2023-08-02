import 'package:get/get.dart';
import 'package:splitpay/get/controller/dashboard_controller.dart';

class DashBoardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(()=>DashBoardController());  }
  
}
import 'package:get/get.dart';
import 'package:splitpay/get/controller/recent_order_controller.dart';

class RecentOrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentOrderController>(() => RecentOrderController());
  }

}
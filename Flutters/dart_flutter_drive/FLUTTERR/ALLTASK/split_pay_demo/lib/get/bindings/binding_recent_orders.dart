import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';

class BindingRecentOrders implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentOrdersController>(() => RecentOrdersController());
  }
}

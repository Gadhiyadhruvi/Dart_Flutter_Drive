import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';

class BindingOrderDetails implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailsController>(() => OrderDetailsController());
  }
}
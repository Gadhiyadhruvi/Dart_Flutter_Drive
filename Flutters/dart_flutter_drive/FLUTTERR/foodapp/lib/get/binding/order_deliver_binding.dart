import 'package:foodapp/get/controller/order_delivery_controller.dart';
import 'package:get/get.dart';

class OrderDeliveryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDeliveryController>(() => OrderDeliveryController());
  }

}
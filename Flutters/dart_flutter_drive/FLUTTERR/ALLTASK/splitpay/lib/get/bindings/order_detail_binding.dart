import 'package:get/get.dart';
import 'package:splitpay/get/controller/order_detail_controller.dart';

class OrderDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailController>(() => OrderDetailController());
  }

}
import 'package:get/get.dart';
import '../controller/confirm_order_controller.dart';

class ConfirmOrderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOrderController>(() => ConfirmOrderController());
  }
}
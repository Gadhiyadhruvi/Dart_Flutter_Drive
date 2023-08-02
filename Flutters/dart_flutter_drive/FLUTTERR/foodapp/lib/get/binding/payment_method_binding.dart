import 'package:foodapp/get/controller/payment_method_controller.dart';
import 'package:get/get.dart';

class PaymentMethodBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodController>(() => PaymentMethodController());
  }

}
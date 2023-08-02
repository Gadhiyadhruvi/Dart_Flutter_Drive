import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';

class BindingLogin implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}

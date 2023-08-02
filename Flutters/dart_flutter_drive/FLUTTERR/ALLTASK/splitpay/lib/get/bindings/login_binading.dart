import 'package:get/get.dart';
import 'package:splitpay/get/controller/login_controlle.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }

}
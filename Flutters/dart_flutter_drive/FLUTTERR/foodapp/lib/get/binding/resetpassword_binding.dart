import 'package:foodapp/get/controller/resetpassword_controller.dart';
import 'package:get/get.dart';

class ResetPassWordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPassWordController>(() => ResetPassWordController());
  }

}
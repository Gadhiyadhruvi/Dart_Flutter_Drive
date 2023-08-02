import 'package:foodapp/get/controller/phonenumber_controller.dart';
import 'package:get/get.dart';

class PhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneNumberController>(() => PhoneNumberController());
  }

}
import 'package:foodapp/get/controller/home2_controller.dart';
import 'package:get/get.dart';

class Home2Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Home2Controller>(() => Home2Controller());
  }

}
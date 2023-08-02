import 'package:foodapp/get/controller/home1_controller.dart';
import 'package:get/get.dart';

class Home1Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Home1controller>(() => Home1controller());
  }
  
}
import 'package:get/get.dart';

import '../controller/home3_controller.dart';

class Home3Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Home3Controller>(() => Home3Controller());
  }

}
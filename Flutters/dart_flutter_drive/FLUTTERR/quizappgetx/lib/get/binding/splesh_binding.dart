import 'package:get/get.dart';

import '../controller/splesh_controller.dart';

class SpleshBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpleshController>(() => SpleshController());
  }

}
import 'package:foodapp/get/controller/splesh_controller.dart';
import 'package:get/get.dart';

class SpleshBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpleshController>(() => SpleshController());
  }

}
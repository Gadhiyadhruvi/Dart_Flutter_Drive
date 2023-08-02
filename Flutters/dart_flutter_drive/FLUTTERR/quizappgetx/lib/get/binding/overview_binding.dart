import 'package:get/get.dart';
import 'package:quizappgetx/get/controller/overview_controller.dart';

class OverViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverViewController>(() => OverViewController());
  }
}

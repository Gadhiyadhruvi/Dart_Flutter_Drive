import 'package:get/get.dart';
import 'package:quizappgetx/screen/home_screen.dart';

class SpleshController extends GetxController {

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 5),() {
        Get.offAndToNamed(HomeScreen.pageId);
    });
    super.onInit();
  }
}
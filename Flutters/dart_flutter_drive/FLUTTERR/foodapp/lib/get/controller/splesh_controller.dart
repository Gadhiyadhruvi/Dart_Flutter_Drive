import 'package:foodapp/screen/home_screen1.dart';
import 'package:get/get.dart';

class SpleshController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 7),() {
      Get.offAndToNamed(HomeScreen1.pageId);
    },);
    super.onInit();
  }
}
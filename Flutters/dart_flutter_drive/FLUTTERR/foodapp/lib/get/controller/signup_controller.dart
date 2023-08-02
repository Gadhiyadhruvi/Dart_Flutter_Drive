import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool obscureText = true.obs;
  // TextEditingController emailcontroller = TextEditingController();
  // TextEditingController passwordcontroller = TextEditingController();

  void toggle() {

    obscureText = obscureText;

  }
}
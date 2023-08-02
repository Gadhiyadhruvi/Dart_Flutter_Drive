import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var isRemember = false.obs;

  TextEditingController accountcontroller = TextEditingController();
  TextEditingController cashiercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
}

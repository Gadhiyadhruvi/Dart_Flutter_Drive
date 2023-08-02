import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  var pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    // pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

}
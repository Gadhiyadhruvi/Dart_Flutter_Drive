import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController numbercontroller = TextEditingController();
  final RxList<String> namelist = <String>[].obs;
  final RxList<String> numberlist = <String>[].obs;

  @override
  void onClose() {
    namecontroller.dispose();
    numbercontroller.dispose();
    super.onClose();
  }

  void addtoList(){
    String text1 = namecontroller.text.toString();
    String text2 = numbercontroller.text.toString();
    namelist.add(text1);
    numberlist.add(text2);
    namecontroller.clear();
    numbercontroller.clear();

  }

}
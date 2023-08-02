import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndex(int value) {
      currentIndex.value = value;
  }

  void callBack(){
      currentIndex.value = 3;
  }



}
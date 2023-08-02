import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController with GetSingleTickerProviderStateMixin{
  TabController? controller;

  final RxList<Tab> productTab = <Tab>[
    const Tab(text: 'Ongoing'),
    const Tab(text: 'History'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: productTab.length);
  }

  @override
  void onClose() {
    controller!.dispose();
    super.onClose();
  }

}
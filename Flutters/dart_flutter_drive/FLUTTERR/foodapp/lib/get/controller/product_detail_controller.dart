// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController with GetSingleTickerProviderStateMixin {
  TabController? controller;
  late final ratingController;
  late double rating;
  RxInt counter = 1.obs;
  RxInt counterr = 1.obs;
  RxInt ratingBarMode = 1.obs;
  RxDouble initialRating = 2.0.obs;
  IconData? selectedIcon;
  var isSelected = "".obs;
  var total = 20.obs;

  int getPriceForSelectedSize(String size) {
    if (size == "S") {
      return 20;
    } else if (size == "M") {
      return 30;
    } else {
      return 50;
    }
  }

  void getTotalPrice() {
    total.value = 20;
    String selectedSize = isSelected.value;
    int priceForSelectedSize = getPriceForSelectedSize(selectedSize);
    total.value = priceForSelectedSize * counter.value;
    print("price ${total.value}");
  }

  void updateTotalPrice() {
    update();
  }

  RxList<String> itemsize = [
    "S",
    "M",
    "L",
  ].obs;

  final RxList<Tab> productTab = <Tab>[
    const Tab(text: 'Delivery'),
    const Tab(text: 'Review'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    if (itemsize.isNotEmpty) {
      isSelected.value = itemsize[0];
      updateTotalPrice(); // Update the total price when the default size is set
    }
    controller = TabController(vsync: this, length: productTab.length);
    ratingController = TextEditingController(text: '3.0');
    rating = initialRating.value;
  }

  @override
  void onClose() {
    controller!.dispose();
    super.onClose();
  }
}
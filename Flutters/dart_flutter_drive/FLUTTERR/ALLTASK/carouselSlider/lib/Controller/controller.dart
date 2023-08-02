import 'package:carouselslider/Provider/popular_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int pagea = 0;

  var  colors =<Color> [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ].obs;
 var letters =<String> [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ].obs;
  var isPlaying = false.obs;

  // var lstPopular = List<dynamic>.empty(growable: true).obs;
  // var isDataProcesing = false.obs;
  // var isDataError = false.obs;
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   getPopular();
  // }
  //
  // void getPopular() {
  //   try {
  //     isDataProcesing(true);
  //     PopularProvider().getPopular().then((resp) => {
  //       lstPopular.clear(),
  //       isDataProcesing(false),
  //       lstPopular.addAll(resp),
  //       isDataError(false)
  //     }, onError: (err) {
  //       isDataProcesing(false);
  //       isDataError(true);
  //   });
  //   } catch (e) {
  //   isDataProcesing(false);
  //   isDataError(true);
  //   }
  // }
}
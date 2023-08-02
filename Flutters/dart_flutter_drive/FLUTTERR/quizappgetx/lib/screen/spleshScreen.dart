import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/get/controller/splesh_controller.dart';

class SpleshScreen extends GetView<SpleshController> {
  static String pageId = '/screenSplesh';
  final controller = Get.put(SpleshController());

  SpleshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width*0.5,
          image: const AssetImage(
            'assets/splesh.jpg',),
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

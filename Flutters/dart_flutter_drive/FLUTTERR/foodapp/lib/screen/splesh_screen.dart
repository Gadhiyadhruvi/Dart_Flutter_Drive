import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/splesh_controller.dart';
import 'package:get/get.dart';

class SpleshScreen extends GetView<SpleshController> {
  static String pageId = '/screenSplesh';
  SpleshScreen({Key? key}) : super(key: key);
  final controller = Get.put(SpleshController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          image: const AssetImage(
            'assets/spl.jpg',),
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

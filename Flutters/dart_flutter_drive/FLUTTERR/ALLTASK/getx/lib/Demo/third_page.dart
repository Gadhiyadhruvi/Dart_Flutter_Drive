// ignore_for_file: prefer_interpolation_to_compose_strings
//
// import 'package:flutter/material.dart';
// import 'package:getx/Demo/my_home_page.dart';
// import 'package:getx/Demo/tap_controller.dart';
// import 'package:get/get.dart';
//
// import 'list_controller.dart';
//
// class ThirdPage extends StatelessWidget {
//   const ThirdPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // TapController controller = Get.find();
//     // ListController listController =Get.put(ListController());
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Obx(() => Column(
//             children: [
//               Container(
//                 height: 80,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: Text("Y value " + Get.find<TapController>().y.value.toString(),style: const TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//               Container(
//                 height: 80,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: Text("Total value " + Get.find<TapController>().z.toString(),style: const TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ],
//           )),
//           GestureDetector(
//             onTap: () {
//               Get.find<TapController>().increaseX();
//               Get.to(() => const MyHomePage());
//             },
//             child: Container(
//               height: 80,
//               width: double.maxFinite,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(20),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//               child: Text("X value" + Get.find<TapController>().x.toString(),style: const TextStyle(fontSize: 20, color: Colors.white),),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Get.find<TapController>().increaseY();
//             },
//             child: Container(
//               height: 80,
//               width: double.maxFinite,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(20),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//               child: const Text("Increase Y ",style: TextStyle(fontSize: 20, color: Colors.white),),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Get.find<TapController>().totalXY();
//             },
//             child: Container(
//               height: 80,
//               width: double.maxFinite,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(20),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//               child: const Text(" Total X+Y ",style: TextStyle(fontSize: 20, color: Colors.white),),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Get.find<ListController>().setValues(Get.find<TapController>().z);
//             },
//             child: Container(
//               height: 80,
//               width: double.maxFinite,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(20),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//               child: const Text("Save Total ",style: TextStyle(fontSize: 20, color: Colors.white),),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

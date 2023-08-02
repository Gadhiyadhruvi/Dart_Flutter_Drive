// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx/Demo/first_page.dart';
// import 'package:getx/Demo/second_page.dart';
// import 'package:getx/Demo/tap_controller.dart';
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TapController controller = Get.find();
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SizedBox(
//         height: double.maxFinite,
//         width: double.maxFinite,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<TapController>(
//                 builder: (_) {
//                   return Container(
//                     height: 100,
//                     width: double.maxFinite,
//                     alignment: Alignment.center,
//                     margin: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                     child: Text(controller.x.toString(),style: const TextStyle(fontSize: 20, color: Colors.white),),
//                   );
//                 },),
//             GestureDetector(
//               onTap: () {
//                 controller.increaseX();
//               },
//               child: Container(
//                 height: 100,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: const Text("Tap",style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Get.to(() => const FirstPage());
//               },
//               child: Container(
//                 height: 100,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: const Text("Go To First Page",style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Get.to(() => SecondPage());
//               },
//               child: Container(
//                 height: 100,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: const Text("Second Page",style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 controller.increaseX();
//               },
//               child: Container(
//                 height: 100,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: const Text("Tap",style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

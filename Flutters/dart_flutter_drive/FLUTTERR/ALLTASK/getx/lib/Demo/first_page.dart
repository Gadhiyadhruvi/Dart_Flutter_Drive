// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'tap_controller.dart';
//
// class FirstPage extends StatelessWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TapController controller = Get.find();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
//         ),
//       ),
//       body: SizedBox(
//         height: double.maxFinite,
//         width: double.maxFinite,
//         child: Column(
//           children: [
//             GetBuilder<TapController>(
//                 builder: (controller) {
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
//                 controller.decreaseX();
//               },
//               child: Container(
//                 height: 100,
//                 width: double.maxFinite,
//                 alignment: Alignment.center,
//                 margin: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//                 child: const Text("decrese X ",style: TextStyle(fontSize: 20, color: Colors.white),),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

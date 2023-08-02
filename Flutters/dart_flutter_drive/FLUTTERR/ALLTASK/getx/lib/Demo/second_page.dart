// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'third_page.dart';
//
// class SecondPage extends StatelessWidget {
//   const SecondPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Get.to(() => const ThirdPage());
//             },
//             child: Container(
//               height: 100,
//               width: double.maxFinite,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(20),
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
//               child: const Text("Go To Third Page",style: TextStyle(fontSize: 20, color: Colors.white),),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

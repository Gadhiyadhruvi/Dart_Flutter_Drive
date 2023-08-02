import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiztype/View/QuizScreen.dart';

import 'View/quiz1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizScreen(),
    );
  }
}

// void main() => runApp(const PageViewExampleApp());
//
// class PageViewExampleApp extends StatelessWidget {
//   const PageViewExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('PageView Sample')),
//         body: const qui(),
//       ),
//     );
//   }
// }

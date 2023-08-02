import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappgetx/get/get_routes.dart';
import 'get/binding/splesh_binding.dart';
import 'screen/spleshScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SpleshScreen(),
      initialBinding: SpleshBinding(),
      getPages: AppPages.page,
    );
  }
}

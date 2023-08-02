import 'package:flutter/material.dart';
import 'package:foodapp/get/binding/splesh_binding.dart';
import 'package:foodapp/get/get_routes.dart';
import 'package:get/get.dart';
import 'screen/splesh_screen.dart';

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
      getPages: AppPages.page,
      initialBinding: SpleshBinding(),
    );
  }
}
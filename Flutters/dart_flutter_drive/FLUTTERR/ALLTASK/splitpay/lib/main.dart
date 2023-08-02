import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitpay/screens/login_screen.dart';

import 'get/bindings/login_binading.dart';
import 'get/get_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login_Screen(),
      getPages : AppPages.page,
      initialBinding: LoginBinding(),
    );
  }
}

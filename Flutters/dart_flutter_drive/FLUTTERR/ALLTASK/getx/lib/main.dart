import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Api_Task/screens/marketing.dart';
import 'package:getx/Api_Task/screens/register.dart';
import 'package:getx/Api_Task/screens/welcome.dart';
import 'package:getx/Task1/screen.dart';
import 'Demo/init_controller.dart' as di;
import 'Demo/init_dependency.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // initialBinding: InitDep(),
     title: ' GetX ',
      debugShowCheckedModeBanner: false,
      home: WelComeScreen(),
    );
  }
}

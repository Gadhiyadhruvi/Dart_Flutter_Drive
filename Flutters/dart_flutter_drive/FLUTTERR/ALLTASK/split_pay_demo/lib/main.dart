import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:split_pay_demo/get/bindings.dart';
import 'package:split_pay_demo/get/get_routes.dart';
import 'package:split_pay_demo/get/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFF5C62C, //Change statusBarColor from here
          <int, Color>{
            50: Color(0xFFFEF9EA),
            100: Color(0xFFFDF4D5),
            200: Color(0xFFFCEEC0),
            300: Color(0xFFFBE8AB),
            400: Color(0xFFFAE396),
            500: Color(0xFFF9DD80),
            600: Color(0xFFF8D76B),
            700: Color(0xFFF7D156),
            800: Color(0xFFF6CC41),
            900: Color(0xFFF5C62C),
          },
        ),
        textTheme:
        const TextTheme(
          headlineLarge: TextStyle(fontFamily: 'Nexa', fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF4A4A4A) ),
          headlineMedium: TextStyle(fontFamily: 'Nexa',fontSize: 16, ),
          displayLarge: TextStyle(fontFamily: 'Poppins', fontSize: 16,fontWeight: FontWeight.bold ),
          displayMedium: TextStyle(fontFamily: 'Poppins', fontSize: 14,fontWeight: FontWeight.bold ),
          displaySmall: TextStyle(fontFamily: 'Poppins', fontSize: 12,fontWeight: FontWeight.bold ),
          bodyLarge: TextStyle(fontFamily: 'Poppins', fontSize: 16,),
          bodyMedium: TextStyle(fontFamily: 'Poppins', fontSize: 14, ),
          bodySmall: TextStyle(fontFamily: 'Poppins', fontSize: 11,),
          labelMedium: TextStyle(fontFamily: 'Poppins', fontSize: 13,),
          labelLarge: TextStyle(fontFamily: 'Poppins', fontSize: 13,fontWeight: FontWeight.bold),


        ),
      ),
      home:   LoginScreen(),
      getPages: AppPages.pages,
      initialBinding: BindingLogin(),
    );
  }
}


// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';
import 'package:new_app/Main_Screen.dart';
import 'Login.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({super.key});

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 6,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>   MainScreen(),
          ));
   });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:
      Center(
        child: ImageFade(
          height: MediaQuery.of(context).size.height*0.3,
          width: MediaQuery.of(context).size.width*0.4,
          image: const AssetImage(
                     'assets/images/a11.jpg',),
          duration: const Duration(milliseconds: 900),
          syncDuration: const Duration(milliseconds: 150),
          alignment: Alignment.center,
          fit: BoxFit.fill,
        ),
      )
    );
  }
}
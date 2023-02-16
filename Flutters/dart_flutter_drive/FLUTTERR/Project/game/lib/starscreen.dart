import 'package:flutter/material.dart';
import 'package:game/genre.dart';

class Game_Image extends StatefulWidget {
  const Game_Image({super.key});

  @override
  State<Game_Image> createState() => _Game_ImageState();
}

class _Game_ImageState extends State<Game_Image> {
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 6,
        ), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => genre(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage(
        'assets/images/guesswhat.webp',
      ),
    )));
  }
}

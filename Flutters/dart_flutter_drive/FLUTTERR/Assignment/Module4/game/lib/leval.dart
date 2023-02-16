import 'package:flutter/material.dart';
import 'package:game/Q1.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/bg4.jpg',
          ),
        )),
        // GestureDetector(
        //                   onTap: () {
        //                     Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                           builder: (context) => Taj_Lake(),
        //                         ));
        //                   },
        child: Stack(children: [
          Positioned(
            top: 350,
            left: 130,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Q1(),
                    ));
              },
              child: Text(
                "Level",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

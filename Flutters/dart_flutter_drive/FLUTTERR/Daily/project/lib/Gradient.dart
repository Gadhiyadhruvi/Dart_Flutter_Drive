import 'package:flutter/material.dart';

class gradient extends StatefulWidget {
  const gradient({super.key});

  @override
  State<gradient> createState() => _gradientState();
}

class _gradientState extends State<gradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: SweepGradient(
                colors: [
                  Colors.blue,
                  Colors.pink,
                  Colors.yellow,
                  Colors.purple,
                  Colors.greenAccent
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Ani extends StatefulWidget {
  const Ani({super.key});

  @override
  State<Ani> createState() => _AnimationState();
}

class _AnimationState extends State<Ani> {
  double _opacity = 1;
  double margin = 0;
  double _width = 200;
  double _height = 200;
  Color _color = Colors.pinkAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: AnimatedContainer(
          duration: Duration(seconds: 2),
          margin: EdgeInsets.all(margin),
          width: _width,
          height: _height,
          color: _color,
          child: Column(
            children: [
              ElevatedButton(
                  onLongPress: () {
                    setState(() {
                      margin = 0;
                      _color = Colors.pinkAccent;
                      _width = 200;
                      _height = 200;
                    });
                  },
                  onPressed: () {
                    setState(() {
                      margin = 60;
                      _color = Colors.yellow;
                      _width = 400;
                      _height = 400;
                    });
                  },
                  child: Text("Animation")),
            ],
          )),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:game/Q5.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class Q4 extends StatefulWidget {
  int? r6;
  Q4({super.key, required this.r6});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  int? r7;
  bool isLogoVisible = true;
  List _selectedIndexs = [];
  List qustion = [
    'A) lenskart',
    'B) eyewatch',
    'C) smartcare',
    'D) sugar',
  ];
  List<int> score = [
    10,
    0,
    0,
    0,
  ];

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 8), () {
      isLogoVisible = false;
      setState(() {});
    });
    Timer(const Duration(seconds: 8), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => Q5(
                    r8: r7,
                  ))));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.purple[100],
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bgd.jpg'),
                        fit: BoxFit.fitHeight)),
                child: Column(children: [
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Visibility(
                        visible: isLogoVisible,
                        child: Image.asset(
                          'assets/images/lens-removebg-preview.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final _isSelected = _selectedIndexs.contains(index);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              print(score[index]);
                              r7 = widget.r6! + score[index];
                              print(r7);
                              if (_isSelected) {
                                _selectedIndexs.remove(index);
                                print("is selected");
                              } else {
                                _selectedIndexs.add(index);
                              }
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 15, left: 30),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 1.3,
                            decoration: BoxDecoration(
                                color: _isSelected
                                    ? Colors.red
                                    : Colors.indigo[900],
                                borderRadius: BorderRadius.circular(50),
                                // gradient: new LinearGradient(colors: [
                                //   Color.fromARGB(255, 61, 51, 144),
                                //   Color.fromARGB(255, 44, 28, 167),
                                // ]),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 20.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            child: Text(
                              qustion[index],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ]))));
  }
}

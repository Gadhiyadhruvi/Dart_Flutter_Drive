import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:game/Q7.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class Q6 extends StatefulWidget {
  int? r10;
  Q6({super.key, required this.r10});

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  int? r11;
  bool isLogoVisible = true;
  List _selectedIndexs = [];
  List qustion = [
    'A) Mahindra',
    'B) Hayabusa',
    'C) Honda',
    'D) Hero',
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
              builder: ((context) => Q7(
                    r13: r11,
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
                          'assets/images/mahinda-removebg-preview.png',
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
                              r11 = widget.r10! + score[index];
                              print(r11);
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

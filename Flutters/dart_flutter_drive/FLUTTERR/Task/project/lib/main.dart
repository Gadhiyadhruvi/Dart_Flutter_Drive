import 'package:flutter/material.dart';

import 'package:project/Project.dart';
import 'package:project/project1.dart';
import 'package:project/screen/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("HOME"),
            backgroundColor: Color.fromARGB(255, 148, 68, 39),
          ),
          body: Container(
            color: Color.fromARGB(255, 231, 231, 239),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.maxFinite,
                  margin:
                      EdgeInsets.only(top: 5, bottom: 5, right: 70, left: 70),
                  padding: EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 135, 17, 133),
                      border:
                          Border.all(color: Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: Text(
                    "INSTAMART",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                      top: 10, bottom: 10, right: 400, left: 100),
                  padding: EdgeInsets.only(right: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 26, 142),
                      border:
                          Border.all(color: Color.fromARGB(255, 45, 12, 122)),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 21, 11, 112))
                      ]),
                  child: Text(
                    "hello",
                    style: TextStyle(fontSize: 20),
                  ),
                  //child: Text("food",style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 24, 23, 33),fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                      top: 10, bottom: 10, left: 400, right: 100),
                  padding: EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 135, 17, 133),
                      border:
                          Border.all(color: Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: Text(
                    "beverages",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                      top: 10, bottom: 10, right: 400, left: 100),
                  padding: EdgeInsets.only(right: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 21, 126),
                      border:
                          Border.all(color: Color.fromARGB(255, 51, 18, 130)),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 15, 23, 134))
                      ]),
                  child: Text(
                    "dairy product",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                      top: 10, bottom: 10, left: 400, right: 100),
                  padding: EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 135, 17, 133),
                      border:
                          Border.all(color: Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: Text(
                    "namkeen",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 400, right: 400, top: 35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: Text("*  shop now *",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print("hello welcome to instamart");
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.amberAccent,
          ),
          body: Container(
            color: Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.all(20),
            child: Text("Welcome "),
          ),
        ));
  }
}

class Task3 extends StatelessWidget {
  const Task3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Color.fromARGB(255, 203, 97, 21),
          ),
          body: Container(
            color: Color.fromARGB(92, 30, 106, 206),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.only(top: 60, bottom: 60, right: 60, left: 60),
            child: Text("Hello..........."),
          ),
        ));
  }
}

class Task4 extends StatelessWidget {
  const Task4({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Container(
            color: Color.fromARGB(188, 25, 189, 93),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 1),
            margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Text("Hiiii....... "),
          ),
        ));
  }
}

class Task5 extends StatelessWidget {
  const Task5({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Color.fromARGB(255, 176, 14, 231),
          ),
          body: Container(
            color: Color.fromARGB(188, 198, 13, 148),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
            child: Text("Welcome "),
          ),
        ));
  }
}

class Task6 extends StatelessWidget {
  const Task6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.amberAccent,
          ),
          body: Container(
            color: Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.only(top: 40, bottom: 40, left: 70),
            child: Text("Welcome "),
          ),
        ));
  }
}

class Task7 extends StatelessWidget {
  const Task7({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: Text("My App"), backgroundColor: Colors.deepOrangeAccent),
          body: Container(
            color: Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.only(top: 40, bottom: 40, right: 70),
            child: Text("Welcome "),
          ),
        ));
  }
}

class Task8 extends StatelessWidget {
  const Task8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("whatsapp"),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}

class Task9 extends StatelessWidget {
  const Task9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram"),
          backgroundColor: Colors.yellow,
        ),
        body: Center(),
      ),
    );
  }
}

class Task10 extends StatelessWidget {
  const Task10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FaceBook"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(),
      ),
    );
  }
}

class Task11 extends StatelessWidget {
  const Task11({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Twitter"),
          backgroundColor: Colors.teal,
        ),
        body: Center(),
      ),
    );
  }
}

class Task12 extends StatelessWidget {
  const Task12({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("**  FRUIT JUNCTION  **"),
              backgroundColor: Colors.brown,
            ),
            body: Container(
                color: Color.fromARGB(255, 240, 235, 239),
                child: Column(children: [
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 20, bottom: 20, left: 50),
                    padding: EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 107, 107),
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 107, 107)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 216, 107, 107))
                        ]),
                    child: Text(
                      "@@  PINEAPPLE  @@",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 20, bottom: 20, right: 50),
                    padding: EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 150, 52, 140),
                        border: Border.all(
                            color: Color.fromARGB(255, 150, 52, 140)),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            topRight: Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 150, 52, 140))
                        ]),
                    child: Text(
                      "@@  STRAWBERRY  @@",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 20, bottom: 20, left: 50),
                    padding: EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 216, 107, 107),
                        border: Border.all(
                            color: Color.fromARGB(255, 216, 107, 107)),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 216, 107, 107))
                        ]),
                    child: Text(
                      "@@  KIWI  @@",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      height: 80,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 20, bottom: 20, right: 50),
                      padding: EdgeInsets.only(left: 60),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 150, 52, 140),
                          border: Border.all(
                              color: Color.fromARGB(255, 150, 52, 140)),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              topRight: Radius.circular(60)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 50,
                                color: Color.fromARGB(255, 150, 52, 140))
                          ]),
                      child: Text("@@ LITCHI  @@",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)))
                ]))));
  }
}

class Task13 extends StatelessWidget {
  const Task13({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("My App"),
              backgroundColor: Colors.amberAccent,
            ),
            body: Container(
                child: Column(children: [
              Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.cyan),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(blurRadius: 30, color: Colors.cyan)
                      ]),
                  child: Text("Hello..",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.w200))),
              Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.cyan),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(blurRadius: 30, color: Colors.cyan)
                      ]),
                  child: Text(
                    "Hello..",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w200),
                  ))
            ]))));
  }
}

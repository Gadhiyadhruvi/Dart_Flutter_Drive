import 'package:flutter/material.dart';

import 'package:project/Project.dart';
import 'package:project/project1.dart';
import 'package:project/screen/home.dart';

void main() {
  runApp(const MaterialApp(
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
            title: const Text("HOME"),
            backgroundColor: const Color.fromARGB(255, 148, 68, 39),
          ),
          body: Container(
            color: const Color.fromARGB(255, 231, 231, 239),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 5, right: 70, left: 70),
                  padding: const EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 135, 17, 133),
                      border: Border.all(
                          color: const Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: const Text(
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
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 400, left: 100),
                  padding: const EdgeInsets.only(right: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 18, 26, 142),
                      border: Border.all(
                          color: const Color.fromARGB(255, 45, 12, 122)),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 21, 11, 112))
                      ]),
                  child: const Text(
                    "hello",
                    style: TextStyle(fontSize: 20),
                  ),
                  //child: Text("food",style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 24, 23, 33),fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 70,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 400, right: 100),
                  padding: const EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 135, 17, 133),
                      border: Border.all(
                          color: const Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60)),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: const Text(
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
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 400, left: 100),
                  padding: const EdgeInsets.only(right: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 44, 21, 126),
                      border: Border.all(
                          color: const Color.fromARGB(255, 51, 18, 130)),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 15, 23, 134))
                      ]),
                  child: const Text(
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
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 400, right: 100),
                  padding: const EdgeInsets.only(left: 60),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 135, 17, 133),
                      border: Border.all(
                          color: const Color.fromARGB(255, 109, 15, 126)),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          topRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                          topLeft: Radius.circular(60)),
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 5,
                            color: Color.fromARGB(255, 185, 21, 188))
                      ]),
                  child: const Text(
                    "namkeen",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                  margin: const EdgeInsets.only(left: 400, right: 400, top: 35),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text("*  shop now *",
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
            title: const Text("My App"),
            backgroundColor: Colors.amberAccent,
          ),
          body: Container(
            color: const Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.all(20),
            child: const Text("Welcome "),
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
            title: const Text("My App"),
            backgroundColor: const Color.fromARGB(255, 203, 97, 21),
          ),
          body: Container(
            color: const Color.fromARGB(92, 30, 106, 206),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 20),
            margin:
                const EdgeInsets.only(top: 60, bottom: 60, right: 60, left: 60),
            child: const Text("Hello..........."),
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
            title: const Text("My App"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Container(
            color: const Color.fromARGB(188, 25, 189, 93),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 1),
            margin:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: const Text("Hiiii....... "),
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
            title: const Text("My App"),
            backgroundColor: const Color.fromARGB(255, 176, 14, 231),
          ),
          body: Container(
            color: const Color.fromARGB(188, 198, 13, 148),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(bottom: 20),
            margin:
                const EdgeInsets.only(top: 40, bottom: 40, left: 40, right: 40),
            child: const Text("Welcome "),
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
            title: const Text("My App"),
            backgroundColor: Colors.amberAccent,
          ),
          body: Container(
            color: const Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.only(top: 40, bottom: 40, left: 70),
            child: const Text("Welcome "),
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
              title: const Text("My App"),
              backgroundColor: Colors.deepOrangeAccent),
          body: Container(
            color: const Color.fromARGB(444, 333, 1101, 2168),
            height: 200,
            width: double.maxFinite,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.only(top: 40, bottom: 40, right: 70),
            child: const Text("Welcome "),
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
            title: const Text("whatsapp"),
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
          title: const Text("Instagram"),
          backgroundColor: Colors.yellow,
        ),
        body: const Center(),
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
          title: const Text("FaceBook"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: const Center(),
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
          title: const Text("Twitter"),
          backgroundColor: Colors.teal,
        ),
        body: const Center(),
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
              title: const Text("**  FRUIT JUNCTION  **"),
              backgroundColor: Colors.brown,
            ),
            body: Container(
                color: const Color.fromARGB(255, 240, 235, 239),
                child: Column(children: [
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    margin:
                        const EdgeInsets.only(top: 20, bottom: 20, left: 50),
                    padding: const EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 216, 107, 107),
                        border: Border.all(
                            color: const Color.fromARGB(255, 216, 107, 107)),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60)),
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 216, 107, 107))
                        ]),
                    child: const Text(
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
                    margin:
                        const EdgeInsets.only(top: 20, bottom: 20, right: 50),
                    padding: const EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 150, 52, 140),
                        border: Border.all(
                            color: const Color.fromARGB(255, 150, 52, 140)),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            topRight: Radius.circular(60)),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 150, 52, 140))
                        ]),
                    child: const Text(
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
                    margin:
                        const EdgeInsets.only(top: 20, bottom: 20, left: 50),
                    padding: const EdgeInsets.only(left: 60),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 216, 107, 107),
                        border: Border.all(
                            color: const Color.fromARGB(255, 216, 107, 107)),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60)),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 50,
                              color: Color.fromARGB(255, 216, 107, 107))
                        ]),
                    child: const Text(
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
                      margin:
                          const EdgeInsets.only(top: 20, bottom: 20, right: 50),
                      padding: const EdgeInsets.only(left: 60),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 150, 52, 140),
                          border: Border.all(
                              color: const Color.fromARGB(255, 150, 52, 140)),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              topRight: Radius.circular(60)),
                          boxShadow: [
                            const BoxShadow(
                                blurRadius: 50,
                                color: Color.fromARGB(255, 150, 52, 140))
                          ]),
                      child: const Text("@@ LITCHI  @@",
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
              title: const Text("My App"),
              backgroundColor: Colors.amberAccent,
            ),
            body: Container(
                child: Column(children: [
              Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.cyan),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        const BoxShadow(blurRadius: 30, color: Colors.cyan)
                      ]),
                  child: const Text("Hello..",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.w200))),
              Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.cyan),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      boxShadow: [
                        const BoxShadow(blurRadius: 30, color: Colors.cyan)
                      ]),
                  child: const Text(
                    "Hello..",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w200),
                  ))
            ]))));
  }
}

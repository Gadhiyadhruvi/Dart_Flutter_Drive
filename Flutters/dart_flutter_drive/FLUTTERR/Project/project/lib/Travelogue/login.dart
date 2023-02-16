import 'package:flutter/material.dart';
import 'package:project/Travelogue/HomeScreen.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  var msg;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(children: [
          Column(children: [
            Container(
                width: 300,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/logo.jpg",
                  fit: BoxFit.fill,
                )),
            Container(
              margin: EdgeInsets.only(top: 30, right: 50, left: 10),
              child: TextFormField(
                controller: usercontroller,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 110, 179, 225),
                    // size: 33,
                  ),
                  labelText: "Enter E-Mail or Number",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 110, 179, 225)),
                  hintText: "@gmail.com",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 110, 179, 255),
                  ),
                  //   focusedBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.blueAccent),
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(5),
                  //     ),
                  //   ),
                  //   border: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           color: Color.fromARGB(255, 245, 248, 246))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, right: 50, left: 10),
              child: TextFormField(
                obscureText: true,
                controller: numbercontroller,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 110, 179, 225),
                    //size: 33,
                  ),
                  labelText: ("Enter PassWord"),
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 110, 179, 225)),
                  hintText: "PassWord",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 110, 179, 255),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.blueAccent),
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(5),
                  //     )),
                  // border: OutlineInputBorder(
                  //     borderSide: BorderSide(
                  //   color: Color.fromARGB(255, 33, 243, 68),
                  // )),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var nam = usercontroller.text;
                        var msg = numbercontroller.text;

                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => home())));
                      });
                      usercontroller.text = "";
                      numbercontroller.text = "";
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(235, 114, 131, 17)),
                    child: Text("Login")))
          ])
        ])));
  }
}

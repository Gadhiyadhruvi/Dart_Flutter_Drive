import 'package:flutter/material.dart';
import 'package:project/Travelogue/food.dart';
import 'package:project/Travelogue/history.dart';
import 'package:project/Travelogue/hotel.dart';
import 'package:project/Travelogue/place.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                child: Stack(children: <Widget>[
          Column(children: [
            Container(
                height: 450,
                width: 400,
                // margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/homescreen.png",
                )),
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewExample(),
                        ));
                  }),
                  child: Container(
                      margin: EdgeInsets.only(left: 15, right: 20, bottom: 20),
                      height: 130,
                      width: 150,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 80, bottom: 100),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        'assets/images/historylogo.png',
                      ))),
                      child: Text(
                        'History',
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 90),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Place(),
                        ));
                  }),
                  child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      height: 130,
                      width: 150,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 80, bottom: 100),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/place.png',
                              ),
                              fit: BoxFit.cover)),
                      child: Text(
                        'Place',
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 90),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Hotel(),
                        ));
                  }),
                  child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/hotellogo.png'))),
                      padding: EdgeInsets.only(left: 90, top: 10),
                      child: Text(
                        'Hotel',
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 90),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Food(),
                        ));
                  }),
                  child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      height: 130,
                      width: 150,
                      padding: EdgeInsets.only(left: 100, bottom: 110),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/foodlogo.png'),
                        //colorFilter: ColorFilter.mode(
                        //  Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      )),
                      child: Text(
                        'Food',
                        style: TextStyle(
                            color: Color.fromARGB(255, 236, 90, 90),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ],
            ),
          ])
        ]))));
  }
}

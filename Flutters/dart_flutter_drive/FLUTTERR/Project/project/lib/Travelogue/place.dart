import 'package:flutter/material.dart';
import 'package:project/Travelogue/Temple.dart';
import 'package:project/Travelogue/city_place.dart';
import 'package:project/Travelogue/lake_place.dart';
import 'package:project/Travelogue/palace.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Palace(),
                            ));
                      },
                      child: Container(
                        width: 155,
                        height: 250,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/palace.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      " PALACE ",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 13, 107),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Lake_Place(),
                            ));
                      },
                      child: Container(
                        //color: Colors.greenAccent,
                        width: 155,
                        height: 250,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Color.fromARGB(255, 221, 248, 221),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/lackplace.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      "LAKE PLACE",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 13, 107),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => City_Place(),
                            ));
                      },
                      child: Container(
                        width: 155,
                        height: 250,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/cityplace.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      " CITY PLACE ",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 13, 107),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Temple(),
                            ));
                      },
                      child: Container(
                        width: 155,
                        height: 250,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/temple.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      " TEMPLE ",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 13, 107),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/Travelogue/properties.dart';

var propery = properties();

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bloom_Boutique(),
                                ));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            child: Image.asset(
                                'assets/images/bloomboutiquehotel.jpg'),
                          )),
                      Text(
                        " BLOOM BOUTIQUE ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                    Column(children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Leela_Palace(),
                                ));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            child: Image.asset(
                                'assets/images/leelapalacehotel.jpg'),
                          )),
                      Text(
                        " LEELA PALACE ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )
                    ])
                  ])),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Udaigarh(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/hoteludaigarh.jpg'),
                      )),
                  Text(
                    " UDAIGARH ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  )
                ]),
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tatsaraas(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/tatsaraasahotel.jpg'),
                      )),
                  Text(
                    " TATSARAASA ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  )
                ])
              ])),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Jaiwana(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/jaiwanahotel.jpg'),
                      )),
                  Text(
                    " JAIWANA ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  )
                ]),
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Trident(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/tridenthotel.jpg'),
                      )),
                  Text(
                    " TRIDENT ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 1, 107),
                        fontWeight: FontWeight.w700),
                  )
                ])
              ])),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Swaroop(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/swaroophotel.jpg'),
                      )),
                  Text(
                    " SWAROOP ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  )
                ]),
                Column(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ananta(),
                            ));
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset('assets/images/anantahotel.jpg'),
                      )),
                  Text(
                    " ANANTA ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  )
                ])
              ]))
        ])));
  }
}

///////////////     bloomboutiquehotel  ///////////////

class Bloom_Boutique extends StatefulWidget {
  const Bloom_Boutique({super.key});

  @override
  State<Bloom_Boutique> createState() => _Bloom_BoutiqueState();
}

class _Bloom_BoutiqueState extends State<Bloom_Boutique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/b6.jpg'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                "BLOOM BOUTIQUE",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/b1.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/b2.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/b3.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/b4.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/b5.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Located in Udaipur, 1 km from Jagdish temple, Bloom Boutique l A Heritage Property at Lake Pichola provides accommodation with a restaurant, free private parking, a shared lounge and a terrace. Among the facilities at this property are a 24-hour front desk and room service, along with free WiFi throughout the property. The hotel features family rooms.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

//////////////          leelapalacehotel      ////////////

class Leela_Palace extends StatefulWidget {
  const Leela_Palace({super.key});

  @override
  State<Leela_Palace> createState() => _Leela_PalaceState();
}

class _Leela_PalaceState extends State<Leela_Palace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/l5.webp'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                " LEELA PALACE ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/l1.webp",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l2.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l3.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l4.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l6.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/l7.webp",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l8.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l9.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l10.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/l11.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "The Leela Palace Udaipur oozes old-world charm and traditional Indian hospitality, with every possible modern-day amenity available. Boasting lavish decor, stylish interiors, and traditional Rajasthani artwork, guests can also expect to relax on dark-wood furniture with the daily newspaper.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

///////////////   hoteludaigarh  //////////////

class Udaigarh extends StatefulWidget {
  const Udaigarh({super.key});

  @override
  State<Udaigarh> createState() => _UdaigarhState();
}

class _UdaigarhState extends State<Udaigarh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/u5.jpg'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                " UDAIGARH ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/u1.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u2.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u3.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u4.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u6.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/u7.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u8.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u9.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u10.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/u11.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Hotel Udaigarh - Udaipur is 100 m from City Palace and 1.5 km from Lake Fatehsagar. Airport transfer and car hire services are available.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

/////////////    tatsaraasahotel  ///////////

class Tatsaraas extends StatefulWidget {
  const Tatsaraas({super.key});

  @override
  State<Tatsaraas> createState() => _TatsaraasState();
}

class _TatsaraasState extends State<Tatsaraas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/t8.jpg'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                "TATSARAASA ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/t1.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t2.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t3.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t4.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t5.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/t7.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t6.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t9.jpg',
                        fit: BoxFit.fill,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t10.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/t11.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Hotel Udaigarh - Udaipur is 100 m from City Palace and 1.5 km from Lake Fatehsagar. Airport transfer and car hire services are available.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

//////////////      jaiwanahotel    ///////////

class Jaiwana extends StatefulWidget {
  const Jaiwana({super.key});

  @override
  State<Jaiwana> createState() => _JaiwanaState();
}

class _JaiwanaState extends State<Jaiwana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/j1.jpg'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                " JAIWANA  ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/j2.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      // Image.asset(
                      //   'assets/images/j3.jpg',
                      //   fit: BoxFit.cover,
                      //   height: 300,
                      // ),
                      Image.asset(
                        'assets/images/j4.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j5.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j6.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/j7.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j8.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j9.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j10.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/j11.webp',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "A 5-minute walk from Udaipur’s famous City Palace and Jagdish Temple, Jaiwana Haveli was once the private residence of the Thakur of Jaiwana. Free WiFi access is available. This heritage property also houses a shopping arcade and a rooftop restaurant.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

/////////////   tridenthotel /////////

class Trident extends StatefulWidget {
  const Trident({super.key});

  @override
  State<Trident> createState() => _TridentState();
}

class _TridentState extends State<Trident> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/tt1.jpg'),
                    fit: BoxFit.cover),
              )),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                " TRIDENT ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/tt2.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt3.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt4.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt5.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt6.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/tt7.jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt8.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt9.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt10.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.asset(
                        'assets/images/tt11.jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "The Leela Palace Udaipur oozes old-world charm and traditional Indian hospitality, with every possible modern-day amenity available. Boasting lavish decor, stylish interiors, and traditional Rajasthani artwork, guests can also expect to relax on dark-wood furniture with the daily newspaper.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

///////////////    swaroophotel   /////////////

class Swaroop extends StatefulWidget {
  const Swaroop({super.key});

  @override
  State<Swaroop> createState() => _SwaroopState();
}

class _SwaroopState extends State<Swaroop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/2e/88/c5/stallion-sports-bar-and.jpg?w=1100&h=-1&s=1'),
                      fit: BoxFit.cover))),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                "  SWAROOP ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/location.webp',
                          ),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.network(
                        "https://r1imghtlak.mmtcdn.com/cb065cb0618511edbe9f0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;0,149&output-format=jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/200707231136385983-1907058260e011edb7cc0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;4,0&output-format=jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/200707231136385983-1ae2d73260e011edac5b0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;6,0&output-format=jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://r1imghtlak.mmtcdn.com/5b74578a618511edb69c0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;0,149&output-format=jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/200707231136385983-860f59b860e011ed8a350a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;17,0&output-format=jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        "https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/200707231136385983-efb616a460e011eda57f0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;3,0&output-format=jpg",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://r2imghtlak.mmtcdn.com/r2-mmt-htl-image/htl-imgs/200707231136385983-eb532ff260e011edb7cc0a58a9feac02.jpg?&output-quality=75&downsize=910:612&crop=910:612;3,0&output-format=jpg',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/77/e5/a9/contactphp.jpg?w=1000&h=-1&s=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/fd/c8/0a/hotel-swaroop-vilas.jpg?w=1100&h=-1&s=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/fc/9f/bd/hotel-swaroop-vilas.jpg?w=1100&h=-1&s=1',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    " * There is a plush outdoor pool, where guests can chill with their family and friends.\n* Rajasthani artwork and paintings on the room walls are beautifully arranged to emanate a royal sentiment from a bygone era\n* Cherish the view of beautiful lake pool services from the bay window \n* A bar is available to cheer up your mood with traditional dances and folk music on request for the guests to breathe in the Rajasthani allure. ",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

//////////////    anantahotel    ///////////

class Ananta extends StatefulWidget {
  const Ananta({super.key});

  @override
  State<Ananta> createState() => _AnantaState();
}

class _AnantaState extends State<Ananta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/40226420.jpg?k=5d661d69a813e2889f9e795d5be1cc7d44e270737734497b365625be63a73282&o=&hp=1'),
                      fit: BoxFit.cover))),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 245, 219, 227),
              ),
              child: Text(
                " ANANTA ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Container(
                    margin: EdgeInsets.all(10),
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/location.webp',
                            ),
                            fit: BoxFit.cover))),
                Container(
                    margin: EdgeInsets.all(10),
                    width: 145,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rating1.png',
                          ),
                          fit: BoxFit.cover),
                    ))
              ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "PROPERTY AMENITIES :",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.local_parking_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Parking Free",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 60, 95, 123)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.wifi),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Free Highspeed Internet",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.fitness_center_outlined),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Fitness Center With Gym",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.connecting_airports),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Airport Transportation",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(5),
              child: Icon(Icons.bedroom_baby),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Baby Sitting",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Column(children: [
            SizedBox(
                height: 350,
                child: CarouselSlider(
                    items: [
                      Image.network(
                        "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/164550627.jpg?k=91671754a9510bb84f3aa8a270f51c6dbfd140277a47f0011077ddf690991598&o=&hp=1",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/328071033.jpg?k=bb85a188bb38d1f1ea1908de936fa2afeda2f883cd2ed970cdc0c0bee36bbee9&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/221458341.jpg?k=016488f6a01fb6730afbfe7c8f4ab99fde59a669e93d711ee3890d6e6cb65560&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/328071170.jpg?k=4535e20034d87f185c7fec9d8b149f4f7418e4d46225b24a7d32f4ed92b1f3d0&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/255107413.jpg?k=2326dbb77eecc3984c642ebdc41ca06b59977f1e98d497aebded5e5f879870c9&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/164551479.jpg?k=b8425bc040010f995b3492ac547692dea90ba160e6d3ad97bc1f97d25c5de354&o=&hp=1",
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/40225774.jpg?k=0f2a07ae6245bd9d2b7f577c7c210bff1051e8d70d8c2db2790f85a17813ef79&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/40225775.jpg?k=c94bcf8af3741f6c753ddcd9627e9892e2a5301181a08b19be1ccf7bab5985bc&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/40225624.jpg?k=17ba9a618b346c0970fde23e5613e3c87abf4005d5737e5d260395933b7dafbc&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      ),
                      Image.network(
                        'https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/40225715.jpg?k=f0016fa0cc46aaff93430865c640f4cc59ac9963fff18b47f2cc4bee047eca9c&o=&hp=1',
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )))
          ])),
          Container(
              child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 119, 82, 198),
              ),
              padding: EdgeInsets.all(10),
              child: Icon(Icons.star),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "ABOUT:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 32.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ])),
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    " The Ananta Udaipur can head to the Monsoon Palace which is 6 km away or the Jag Mandir Palace famously known as Lake Palace and the City Palace which are 7 km from the property. The Udaipur Bus Station is 8 km away, Udaipur Railway Station is 10 km and the Maharana Pratap Airport is 30 km.",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ))),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Hotel())));
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Text(
                          "SKIP",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ))),
                Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Color.fromARGB(255, 221, 221, 36),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))
              ]))
        ])));
  }
}

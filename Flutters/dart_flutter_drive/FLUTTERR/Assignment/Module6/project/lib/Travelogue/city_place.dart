import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/Travelogue/Temple.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/Travelogue/palace.dart';
import 'package:project/Travelogue/properties.dart';

var propery = properties();

class City_Place extends StatefulWidget {
  const City_Place({super.key});

  @override
  State<City_Place> createState() => _City_PlaceState();
}

class _City_PlaceState extends State<City_Place> {
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             body: SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           margin: EdgeInsets.only(top: 50),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Column(children: [
//                                   GestureDetector(
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   Ahar_Cenotapha(),
//                                             ));
//                                       },
//                                       child: SizedBox(
//                                           child: Container(
//                                               height: 150,
//                                               margin:
//                                                   EdgeInsets.only(bottom: 10),
//                                               width: 150,
//                                               child: Image.asset(
//                                                 'assets/images/ahar.jpg',
//                                                 fit: BoxFit.cover,
//                                               )))),
//                                   Text(
//                                     " AHAR CENOTAPHA ",
//                                     style: TextStyle(
//                                         fontStyle: FontStyle.normal,
//                                         fontSize: 20,
//                                         color: Color.fromARGB(255, 1, 13, 107),
//                                         fontWeight: FontWeight.w700),
//                                   )
//                                 ]),
//                                 Column(children: [
//                                   GestureDetector(
//                                       onTap: () {
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                               builder: (context) =>
//                                                   Crystal_Gallery(),
//                                             ));
//                                       },
//                                       child: SizedBox(
//                                           child: Container(
//                                         margin: EdgeInsets.only(bottom: 10),
//                                         height: 150,
//                                         width: 150,
//                                         child: Image.asset(
//                                             'assets/images/crystalgallery.jpg',
//                                             fit: BoxFit.cover),
//                                       ))),
//                                   Text(
//                                     "CRYSTAL GALLERY ",
//                                     style: TextStyle(
//                                         fontStyle: FontStyle.normal,
//                                         fontSize: 20,
//                                         color: Color.fromARGB(255, 1, 13, 107),
//                                         fontWeight: FontWeight.w700),
//                                   )
//                                 ])
//                               ])),
//                       Container(
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Gulabh_Bagh_Zoo(),
//                                         ));
//                                   },
//                                   child: SizedBox(
//                                       child: Container(
//                                     margin:
//                                         EdgeInsets.only(bottom: 10, top: 10),
//                                     height: 150,
//                                     width: 150,
//                                     child: Image.asset(
//                                         'assets/images/gulabh bagh & zoo.jpg',
//                                         fit: BoxFit.cover),
//                                   ))),
//                               Text(
//                                 " GULABH BAGH & ZOO ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ]),
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Jeel_Water_Park(),
//                                         ));
//                                   },
//                                   child: SizedBox(
//                                       child: Container(
//                                     margin: EdgeInsets.only(
//                                         bottom: 10, top: 10, right: 10),
//                                     height: 150,
//                                     width: 150,
//                                     child: Image.asset(
//                                         'assets/images/jeel water park.jpg',
//                                         fit: BoxFit.cover),
//                                   ))),
//                               Text(
//                                 " JEEL WATER PARK ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ])
//                           ])),
//                       Container(
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Marvel_Water_Park(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin:
//                                           EdgeInsets.only(bottom: 10, top: 10),
//                                       child: Image.asset(
//                                         'assets/images/marvel water park.png',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " MARVEL WATER PARK ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ]),
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Neharu_Garden(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin: EdgeInsets.only(
//                                           bottom: 10, top: 10, right: 10),
//                                       child: Image.asset(
//                                         'assets/images/neharu garden.jpg',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " NEHARU GARDEN ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 1, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ])
//                           ])),
//                       Container(
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Rajiv_Gandhi_Park(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin: EdgeInsets.only(
//                                           bottom: 10, top: 10, left: 10),
//                                       child: Image.asset(
//                                         'assets/images/rajiv gandhi park.jpeg',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " RAJJIV GANDHI  ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ]),
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Saheliyon_Ki_Bari(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin: EdgeInsets.only(
//                                           bottom: 10, top: 10, left: 10),
//                                       child: Image.asset(
//                                         'assets/images/saheliyon ki bari.jpg',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " SAHELIYON BARI ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ])
//                           ])),
//                       Container(
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Shilp_Gram(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin: EdgeInsets.only(
//                                           bottom: 10, top: 10, left: 23),
//                                       child: Image.asset(
//                                         'assets/images/shilp gram.jpg',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " SHILP GRAM ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ]),
//                             Column(children: [
//                               GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               Sukhdiya_Car_Circle(),
//                                         ));
//                                   },
//                                   child: Container(
//                                       height: 150,
//                                       width: 150,
//                                       margin: EdgeInsets.only(
//                                           bottom: 10, top: 10, left: 10),
//                                       child: Image.asset(
//                                         'assets/images/sukhadiya car circle.jpg',
//                                         fit: BoxFit.cover,
//                                       ))),
//                               Text(
//                                 " SUKHDIYA  CIRCLE ",
//                                 style: TextStyle(
//                                     fontStyle: FontStyle.normal,
//                                     fontSize: 20,
//                                     color: Color.fromARGB(255, 1, 13, 107),
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ])
//                           ]))
//                     ]))));
//   }
// }

    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: propery.cityplaceimage.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => propery.cityplacelist[index],
                      ));
                },
                child: Container(
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(image: AssetImage(images[index]))),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          propery.cityplaceimage[index],
                        )),
                    Text(
                      propery.cityplacename[index],
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 13, 107),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
              );
            },
          )),
    );
  }
}

////////////////////   AHAR CENOTAPHA   /////////////

class Ahar_Cenotapha extends StatefulWidget {
  const Ahar_Cenotapha({super.key});

  @override
  State<Ahar_Cenotapha> createState() => _Ahar_CenotaphaState();
}

class _Ahar_CenotaphaState extends State<Ahar_Cenotapha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(physics: BouncingScrollPhysics(), children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
          width: double.maxFinite,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsXPK8kvN0oqVdjGeF-wdk906H7em9ZCryowsjVP5592tef7XETX499lqW3_zdtwsEbZQ&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1, bottom: 1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 221, 248, 221),
          ),
          child: Text(
            " AHAR CENOTAPHA ",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                color: Color.fromARGB(255, 1, 13, 107),
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > ADDRESS:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " Main Rd,\n Ayad,\n Ganapati Nagar,\n Udaipur, Rajasthan\nPincode : 313001",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            maxRating: 5,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 2),
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (value) {
              print(value);
            },
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > IMAGES:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://myudaipurcity.com/wp-content/uploads/2017/03/Ahar-Cenotaphs-Udaipur.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw5kwpzEayAQSqaNBJEVr6btAFhqTM4QdkQEDfWCD0fNjn1WzyqRYfwTToaEjbqf3bqnE&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThIZ92bY22vf-qmHBi_Zy8tUjD1GQJaUu-nPuwJ_XSdpLBdngx0YSd8TzWwbSnV6MRYjw&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr_TkTH_0yeKRNcF2fTmyUXf_ZCMowKt0C_Id6P1UG9jcbYMl6tlOReNvoPg4Xy8XNmFE&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  " > HISTORY:",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " \n           Ahar Cenotaphs, commonly known as the royal cremation ground is a legacy of the Mewar Kingdom built over 400 years ago. There are about nineteen rulers of the Mewar dynasty cremated in this glorious ground.\n",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 7, 91, 160)),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              "           The last cenotaph was constructed for the cremation of Maharana Bhagwat Singh in 2004. The Ahar Cenotaphs has always attracted tourists, and it has been part of some of the Hollywood movies.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 7, 91, 160)),
            ),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           In the 1990s, an initiative to restore the legacy of the ancestors of Mewar dynasty was started by Arvind Singh Mewar. He carried out programs to reinstate its past glory. In this process, he got a museum constructed in the compound presently known as the Ahar Archaeological museum. The Ahar Archaeological Museum is home to artifacts coming from the 10th century.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////////   CRYSTAL GALLERY   /////////////

class Crystal_Gallery extends StatefulWidget {
  const Crystal_Gallery({super.key});

  @override
  State<Crystal_Gallery> createState() => _Crystal_GalleryState();
}

class _Crystal_GalleryState extends State<Crystal_Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/8e/43/68/caption.jpg?w=300&h=300&s=1',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " CRYSTAL GALLERY ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "3, City Palace Road,\n Rao Ji Ka Hata,\n Udaipur, Rajasthan\n Pincode : 313001",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                    margin:
                        EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://udaipurtourism.co.in/images//tourist-places/crystal-gallery-udaipur/crystal-gallery-udaipur-indian-tourism-history.jpg',
                            ),
                            fit: BoxFit.cover))),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpCACymAQd3WYjvWEY8-jJytM9moOgGkCNajNUfxOAZi4CWvwYCjONhV4B5bF95E4123A&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://live.staticflickr.com/4067/4498579689_68436ce4a9_b.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpQYJURNhp0_fKbVWf6yAJQN-1Inn75p54DPjU1lD9xje6RMXsYJfswqQZvJ57wkMH954&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                            " \n           Crystal Gallery treasure of various crystals, the gallery is housed inside the great Fateh Prakash Palace. The gallery has the largest collection of crystals all over the world. The gallery was established in the year 1877 by Maharana Sajjan Singh. The Crystals were ordered from Birmingham – based F & C Osler company by Maharana Sajjan Singh. These crystals were kept covered and packed till 110 years as Maharana Pratap Was died before opening the gallery.  The gallery was opened to the public in the year 1994. There are beds, fountains, tables made out of crystals which are been brought from all around the world.\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color.fromARGB(255, 7, 91, 160))))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           It is said that in 1877, Maharana Sajjan Singh had ordered the entire collection of crystals from a Birmingham-based F&C Osler firm. There was a delay in the delivery of the consignment and unfortunately, Sajjan Singh had passed away even before the crystals arrived.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Apparently, the entire crystal collection was customised as per the taste and preferences of the royalty of Mewar and each of the objects has the essence of the Mewar Kingdom etched on it attentively.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

/////////////  Gulab Bagh Zoo   ///////////

class Gulabh_Bagh_Zoo extends StatefulWidget {
  const Gulabh_Bagh_Zoo({super.key});

  @override
  State<Gulabh_Bagh_Zoo> createState() => _Gulabh_Bagh_ZooState();
}

class _Gulabh_Bagh_ZooState extends State<Gulabh_Bagh_Zoo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(physics: BouncingScrollPhysics(), children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
          width: double.maxFinite,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/p/AF1QipNRg3ox_O_WXZB18OaYTdwxQ4euoAO-kP47Girt=w1024-k',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1, bottom: 1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 221, 248, 221),
          ),
          child: Text(
            " GULAB BAGH ZOO ",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                color: Color.fromARGB(255, 1, 13, 107),
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > ADDRESS:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " Gulab Bagh Rd,\n Udaipur, Rajasthan\n Pincode : 313001",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            maxRating: 5,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 2),
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (value) {
              print(value);
            },
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > IMAGES:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStO3SjSR1hhrsqJbHPdwTvl0pSuhntkVpoI4q3c3wGlBxZfeHIYrPEuaICkIXKe-l4EfU&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://udaipurtourism.co.in/images//tourist-places/gulab-bagh-and-zoo-udaipur/gulab-bagh-and-zoo-udaipur-tourism-entry-ticket-price.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://www.connectingtraveller.com/images/localtip/1628621212udaipur-saheliyon-ki-bari-1.webp',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHfRLW81f3EL1P4R6TxFm2QDDOv32utNsKbgBHngZ_qMi0wWy0StimmZkM6VRSR2vTxAY&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  " > HISTORY:",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " \n           Gulab Bagh, also known as Sajjan Niwas Garden, was built by Maharana fateh Singh in the 1887. It is the fourth oldest zoo in the semi-continent. It spans across 66 acres of land,[1] and is hailed as one of the most beautiful and largest garden in Rajasthan.By Maharana's volition, a horticulturist from Madras, T.H. Story, was appointed in 1882 to stock the garden with plants with medicinal values on the 66.5 acres of land and worked there until 1920. The garden consisted of a Lotus Pond, and many prominent trees that included many species of mangoes, guava, grapes, lemon, bor, mulberry, rayan, pomegranate, bananas, sapota, tamarind, bullock's heart (ramphal), lichi, arjun trees, wood apple, karonda, campher, citron, jamun, pummelo, meetha neem, kargi lime, ficus species, anola, jack fruit, dhanverjia, grandi flora, jasmin, dawood etc. In the year 1882.\n",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 7, 91, 160)),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              "           Maharana Sajjan Singh placed the foundation stone of the Victoria museum(now called Saraswati Bhawan Library) in the garden on 2 November 1890. It was inaugurated by Lord Lansdown. Mr. Gauri Shankar Ojha was the first curator of this museum appointed in the year 1890. The museum had many rare artefacts and stone manuscripts dating from 3rd Centaury B.C. to 17th Centaury A.D.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color.fromARGB(255, 7, 91, 160)),
            ),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           Various Flower and Vegetable shows were organized in the garden starting from the first one in 1888 by Maharana Fateh Singh. The zoo organized fights meant for entertainment between lions or tigers and wild boars. The zoo upon the fifth decade of its commencement included plenty of rare species including animals like Black Leopards, Rhinos, Ostriches, Zebras, hoolock gibbons, etc. most of the animals were transferred to other zoos in India after Independence.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////////   JEEL WATER PARK   /////////////

class Jeel_Water_Park extends StatefulWidget {
  const Jeel_Water_Park({super.key});

  @override
  State<Jeel_Water_Park> createState() => _Jeel_Water_ParkState();
}

class _Jeel_Water_ParkState extends State<Jeel_Water_Park> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(physics: BouncingScrollPhysics(), children: [
      Column(children: [
        Container(
            margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
            width: double.maxFinite,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://www.holidify.com/images/cmsuploads/compressed/2_20181116232947_20181116233902.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 1, bottom: 1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 221, 248, 221),
            ),
            child: Text(" JEEL WATER PARK ",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 25,
                    color: Color.fromARGB(255, 1, 13, 107),
                    fontWeight: FontWeight.w700))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(" > ADDRESS:",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 9, 73, 126))))),
        Container(
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126))))),
        Container(
            child: RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                maxRating: 5,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (value) {
                  print(value);
                })),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(" > IMAGES:",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 9, 73, 126))))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://content.jdmagicbox.com/comp/udaipur-rajasthan/d7/9999px294.x294.160711131439.r7d7/catalogue/jeel-water-park-bhuwana-udaipur-rajasthan-water-parks-aegebk1eld.jpg?clr=17444f',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  " > HISTORY:",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160))))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160))))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////////   MARVEL   /////////////

class Marvel_Water_Park extends StatefulWidget {
  const Marvel_Water_Park({super.key});

  @override
  State<Marvel_Water_Park> createState() => _Marvel_Water_ParkState();
}

class _Marvel_Water_ParkState extends State<Marvel_Water_Park> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " VINTAGE ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

////////////////////   NEHARU GARDEN   /////////////

class Neharu_Garden extends StatefulWidget {
  const Neharu_Garden({super.key});

  @override
  State<Neharu_Garden> createState() => _Neharu_GardenState();
}

class _Neharu_GardenState extends State<Neharu_Garden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " VINTAGE ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

////////////////////   RAJIV GANDHI PARK   /////////////

class Rajiv_Gandhi_Park extends StatefulWidget {
  const Rajiv_Gandhi_Park({super.key});

  @override
  State<Rajiv_Gandhi_Park> createState() => _Rajiv_Gandhi_ParkState();
}

class _Rajiv_Gandhi_ParkState extends State<Rajiv_Gandhi_Park> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " VINTAGE ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

////////////////////   SAHELIYON KI BARI   /////////////

class Saheliyon_Ki_Bari extends StatefulWidget {
  const Saheliyon_Ki_Bari({super.key});

  @override
  State<Saheliyon_Ki_Bari> createState() => _Saheliyon_Ki_BariState();
}

class _Saheliyon_Ki_BariState extends State<Saheliyon_Ki_Bari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " VINTAGE ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

////////////////////   SHILP GRAM   /////////////

class Shilp_Gram extends StatefulWidget {
  const Shilp_Gram({super.key});

  @override
  State<Shilp_Gram> createState() => _Shilp_GramState();
}

class _Shilp_GramState extends State<Shilp_Gram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
                  width: double.maxFinite,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1, bottom: 1),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 248, 221),
                  ),
                  child: Text(
                    " VINTAGE ",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Color.fromARGB(255, 1, 13, 107),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > ADDRESS:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    maxRating: 5,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " > IMAGES:",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(top: 1, left: 1),
                        child: Text(
                          " > HISTORY:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ))),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 7, 91, 160)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

////////////////////   SUKHADIYA CAR CIRCLE   /////////////

class Sukhdiya_Car_Circle extends StatefulWidget {
  const Sukhdiya_Car_Circle({super.key});

  @override
  State<Sukhdiya_Car_Circle> createState() => _Sukhdiya_Car_CircleState();
}

class _Sukhdiya_Car_CircleState extends State<Sukhdiya_Car_Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(physics: BouncingScrollPhysics(), children: [
      Column(children: [
        Container(
          margin: EdgeInsets.only(top: 2, left: 2, right: 2, bottom: 2),
          width: double.maxFinite,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://www.yuvrajudaipurtaxi.com/wp-content/uploads/2020/12/vintage-5-1024x686.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 1, bottom: 1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 221, 248, 221),
          ),
          child: Text(
            " VINTAGE ",
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                color: Color.fromARGB(255, 1, 13, 107),
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > ADDRESS:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              "Gulab Bagh Road,\n Brahmpuri,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          child: RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            maxRating: 5,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 2),
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (value) {
              print(value);
            },
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1, left: 1),
            child: Text(
              " > IMAGES:",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 73, 126)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'http://luxurytoursindia.in/wp-content/uploads/2018/03/Royal-Vintage-Car-Museum-Udaipur-16.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl4D-nnjbnKHXpJ1gH5zhRIv1LtQqGxZnaUfNoj-7BRvO3PazRlhg-5318689CGfR-NIk&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnqZyI8psXNHVPmcFTjFbbrwwRl_AMUW5H0-0dD3h--3zQb5F4_Cf61x-ed3GwNEwAGKg&usqp=CAU',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://magazine.derivaz-ives.com/content/images/2021/08/003-037-a-This-Rolls-Royce-Twenty-chassis---GLK21-has-participated-at-the-Pebble-Beach-Concours-d-Elegance.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  " > HISTORY:",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           Vintage and Classic Car Museum is home to 20 antique cars, which includes four classic Rolls-Royce, one MG-TC convertible, two 1939 Cadillacs, one Ford-A Convertible, one 1936 Vauxhall-12, rare models of Mercedes and some of the solar operated rickshaws and many other vehicles.\n",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160))))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    "           The spectacular collection of vehicles is housed in the former Mewar State Motor Garage which also serves as a museum site. There is a semi-circular motor garage whose forecourt is enclosed within a much larger courtyard. There is also a Shell Petrol pump located on this property, but it is believed that the condition of the petrol pump is unstable. You will be amazed to find that the vehicles are preserved wonderfully. Vehicles dating late 1900 are still kept speck free.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160))))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n           Inaugurated on 15th February 2000 by Lord Montagu of Beaulieu, Vintage and Classic Car Museum is owned by Rana Shri Arvind Singh Ji Mewar. The museum is the official property of the HRH group- Garden Hotel and restaurant. Lord Montagu of Beaulieu, was the founder of the National Motor Museum in England.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

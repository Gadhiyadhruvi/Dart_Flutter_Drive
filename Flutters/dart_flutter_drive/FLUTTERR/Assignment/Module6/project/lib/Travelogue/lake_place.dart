import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Travelogue/Temple.dart';
import 'package:project/Travelogue/properties.dart';

var propery = properties();

class Lake_Place extends StatefulWidget {
  const Lake_Place({super.key});

  @override
  State<Lake_Place> createState() => _Lake_PlaceState();
}

class _Lake_PlaceState extends State<Lake_Place> {
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             child: Column(children: [
//               Container(
//                 margin: EdgeInsets.only(top: 50),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Ambarai_Ghat(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/ambrai_ghat.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " AMBRAI_GHAT ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Doodh_Talaji(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/doodh talaji.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " DOODH TALAJI ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Fateh_Sagar(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/Fateh-Sagar-Lake.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " FATEH SAGAR ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Jaisamand(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/jaisamand.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " JAISAMAND ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Jiyansagar(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/jiyansagar.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " JIYANSAGAR ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Pichola(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/pichola.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " PICHOLA ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 1, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Rajsamand(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/rajsamand.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " RAJSAMAND ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Udaisagar(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/udaisagar.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " UDAISAGAR ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//           ),
//         ));
//   }
// }

    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
                itemCount: propery.lakeplaceimages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  propery.lakeplacelist[index],
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
                                  propery.lakeplaceimages[index],
                                )),
                            Text(
                              propery.lakeplacename[index],
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 1, 13, 107),
                                  fontWeight: FontWeight.w700),
                            )
                          ])));
                })));
  }
}
////////////////  AMBARAI GHAT   ///////////

class Ambarai_Ghat extends StatefulWidget {
  const Ambarai_Ghat({super.key});

  @override
  State<Ambarai_Ghat> createState() => _Ambarai_GhatState();
}

class _Ambarai_GhatState extends State<Ambarai_Ghat> {
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbQoCOQAGkd2BRGi0Fhz4wyIvc5rVM3_AdH4-Yy2UV5Ieq9b1845qjKHrzmhvGpjwgEhM&usqp=CAU',
                    ),
                    fit: BoxFit.cover))),
        Container(
          margin: EdgeInsets.only(top: 1, bottom: 1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 221, 248, 221),
          ),
          child: Text(
            " AMBRAI GHAT ",
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
              " Chandpole Maji Mandir ,\n Pichola, \n Udaipur, Rajasthan \n Pincode: 313001",
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSphVlRKS6KauGyHJU9H_XVcjowVtTAC2DlwffRyFqMimMl6B5VJ4wVwGq42OLKjNDW2oU&usqp=CAU',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVZk2tBv3V_0HzEMmvfJ3TO0hCMu1OtVr8WIma1Gz6psGjp3vSlzCGfxQTQNu2jnSS4cY&usqp=CAU',
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
                  'http://www.udaipurblog.com/wp-content/uploads/2015/04/IMG_3622_1-640x480.jpg',
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRV8K-ED9sAZ9q7zR6i2oMkFKg8YggVkLsUqbfwM-43f80G79PO9qU3u_0sv4VFwdA0xs&usqp=CAU',
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
              " \n           Ambrai Ghat which was before referred as Manjhi Ghat has now surely occupied a permanent location in the hearts of especially the young blood. Ambrai Ghat is a gateway to a delighting experience that passes from the old streets of the area called as ‘Old City’ in Udaipur.\n",
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
              "           The Pichola water splashes on the Ambrai Ghat synchronously with the dancing wind accompanied by the birds and pigeons chirping joyously, and as the golden sun decides to enter the Pichola Lake delivering an enchanting view. Also the Ghat provides a detailed view of the Heritage Hotels like Lake Palace Udaipur, Jag Mandir, Shiv Niwas etc.",
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
                    " \n           The Ambrai Ghat has been maintained well by the Nagar Parishad of Udaipur, marble boundaries are installed and wide seats for resting are available on the Ghat.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////    DOODH TALAJI     //////////

class Doodh_Talaji extends StatefulWidget {
  const Doodh_Talaji({super.key});

  @override
  State<Doodh_Talaji> createState() => _Doodh_TalajiState();
}

class _Doodh_TalajiState extends State<Doodh_Talaji> {
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
                      'https://udaipurtourism.co.in/images/places-to-visit/headers/doodh-talai-musical-garden-udaipur-indian-tourism-entry-fee-timings-holidays-reviews-header.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
          margin: EdgeInsets.only(top: 1, bottom: 1),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 221, 248, 221),
          ),
          child: Text(
            " DOODH TALAI ",
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
              "Dudh Talai,\nPichola,\nUdaipur, Rajasthan,\nPincode : 313001, \nIndia",
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
                  'https://live.staticflickr.com/1874/29575004267_6008d61ff8_b.jpg',
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
                  'https://img.freepik.com/premium-photo/beautiful-landscape-view-monument-doodh-talai-musical-garden-perfect-example-modern-architecture-udaipur-rajasthan_136354-12282.jpg',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSul17r4vuJJ4x_X5eV5yXMRIgJCypkNsV56RQVm2AXRcDW9Fis844mOFeJcGeddL42S60&usqp=CAU',
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
                  'https://thumbs.dreamstime.com/b/udaipur-india-may-lake-doodh-talai-musical-garden-rajasthan-state-193148553.jpg',
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
              " \n           Dudh Talai Lake is a dainty pond at the epicenter of the Udaipur. Encompassed by the marvelous hillocks all around, this lake holds out venturing activities of camel and horse ride. Besides, the beautiful garden of Manikya Lal Verma owing its origin back to the year of 1995 enriches the beauty of Doodh Talai along sides offering the marvelous view of the serene Pichola and the lake of Doodh Talai.\n",
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
              "           The sacred temple of Karni Mata perched on the hillock is abode to the milky white idol of Goddess Karni and magnetizes devotees from all across for the spiritual absolution it offers. The mesmerizing Pt. Deen Dayal Upadhyay Park adorns the Manikya Lal Verma garden with its charming beauty besides sheltering the sunset point offering commanding views of the surroundings and the musical fountain.",
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
                  " \n           The sprawling Pichola Lake trails its origin back to the 14th century and was initially built to supply water to the surrounding regions. Famed for playing site to the much hyped James Bond film: Octopussy, this artificial lake is home to four islands and offers a venturing boating ride to the tourists seeking thrill.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 7, 91, 160)),
                )))
      ])
    ]))));
  }
}

/////////////////   FATEH SAGAR   ////////////

class Fateh_Sagar extends StatefulWidget {
  const Fateh_Sagar({super.key});

  @override
  State<Fateh_Sagar> createState() => _Fateh_SagarState();
}

class _Fateh_SagarState extends State<Fateh_Sagar> {
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
                          'https://i0.wp.com/www.rajasthandirect.com/wp-content/uploads/2012/11/fateh-sagar.jpg?fit=750%2C535&ssl=1',
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
                    " FATEH SAGAR ",
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
                      " Dewali,\n Udaipur, Rajasthan,\n Pincode : 313001, \n India",
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
                          'https://www.trawell.in/admin/images/upload/307070312Udaipur_Fateh_Sagar_Main.jpg',
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
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTlmjJBCKT0gtNnxg7huBr9bm9-gtGQ_mIusxQCq-PWwv-Qhs_ZFelE1IePZjHVbWAxV4&usqp=CAU',
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
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPj4I757f-o3uFftw2JeahCUqofrVo2mLp8FnyE7sPhlnrLB9-LN1SmE93RqzTuW_hEMw&usqp=CAU',
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
                          'https://www.makemytrip.com/travel-guide/media/dg_image/udaipur/Fateh-Sagar-Lake_wikimedia-commons_Shakti.jpg',
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
                      " \n           In 1687, Maharana Jai Singh first constructed the lake but two hundred years later the earthen bund which formed the lake was washed away during floods, and thereafter Maharana Fateh Singh, in 1889, built the 'Connaught Dam' on Lake Dewali to mark the visit of Duke of Connaught, son of Queen Victoria. The dam enlarged the lake, and it was later renamed, Fateh Sagar Lake.\n",
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
                      "          The runoff emerging from surrounding hills drains into this lake. The lake is pear-shaped and is encircled by the Aravalli hills on three sides with a straight gravity stone masonry dam on the eastern side which has a spillway to discharge flood flows during the monsoon season",
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
                      " \n           Three causeways, one from Pichola Lake, the other from Madar Lake and the third one from Badi Lake lead to the Fateh Sagar Lake. There are three inlet channels, which feed the lake and an overflow section on the eastern side in the masonry dam of 800 metres (2,600 ft) length. Monsoon rains are the main source of all water to the lake. Initially constructed as an irrigation scheme, it is now the second major source of drinking water to the city of Udaipur and the irrigation supplies have been discontinued. A canal from the Rang Sagar Lake connects to the Fateh Sagar Lake.",
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

/////////////////   JAISAMAND   ////////////

class Jaisamand extends StatefulWidget {
  const Jaisamand({super.key});

  @override
  State<Jaisamand> createState() => _JaisamandState();
}

class _JaisamandState extends State<Jaisamand> {
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
                          'https://www.trawell.in/admin/images/upload/307069776Udaipur_Jaisamand_Lake_Main.jpg',
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
                    " JAISAMAD LAKE ",
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
                      "48 kilometres from the city of Udaipur, \n Dhebar.\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
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
                          'https://udaipurtourism.co.in/images/places-to-visit/headers/jaisamand-lake-udaipur-indian-tourism-entry-fee-timings-holidays-reviews-header.jpg',
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
                          'https://www.tourmyindia.com/images/jaisamand-lake1.jpg',
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
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/08/e4/96/jaisamand-as-seen-from.jpg?w=1200&h=-1&s=1',
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
                          'https://udaipurtourism.co.in/images//tourist-places/jaisamand-lake-udaipur/jaisamand-lake-udaipur-indian-tourism-opening-time-closing.jpg',
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
                      " \n           Jaisamand Lake is renowned for being the second largest artificial lake in Asia. Located at a distance of 48 kms from the city of Udaipur, Jaisamand Lake is also known as Dhebar. In 1685, Maharana Jai Singh built this lake while making a dam on the Gomti River. This lake covers an area of 36sq km, stretches to the length of 14 km and width of 9 km. The lake is deep to the maximum of 102 feet and has a circumference of 30 miles.\n",
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
                      "           aisamand Lake was the largest artificial lake in Asia, till the time when Aswan Dam of Egypt was not constructed. The dam on this lake is worth mentioning due to its massive size. It is 1202 feet in length, 116 feet in height and width of 70 feet at the bottom. The kings of Mewar were religious by nature and this is conformed by the fact that this dam has a Shiva temple. Centrally located, this temple dedicated to Lord Shiva.",
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
                      " \n           Moreover, a summer palace of Udaipur Queens makes the perfect backdrop to Jaisamand Lake. The lake also boasts of six interesting cenotaphs carved from marble on its embankment. On the northern shore of the lake, there is a stunning palace with a courtyard and on its southern shore; there is a pavilion of 12 pillars. From the courtyard of the palace, you can see the dazzling view of Jaisamand Lake.",
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

/////////////////   JIYANSAGAR   ////////////

class Jiyansagar extends StatefulWidget {
  const Jiyansagar({super.key});

  @override
  State<Jiyansagar> createState() => _JiyansagarState();
}

class _JiyansagarState extends State<Jiyansagar> {
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
                          'http://1.bp.blogspot.com/-5a0Uvr2e9aA/Uj7J1V6vC7I/AAAAAAAAAGM/KqYtmArql6Q/s1600/DSCN0168.jpg',
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
                    " JIYAN SAGAR ",
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
                      "12kms away from the Udaipur City\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
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
                          'https://discoverudaipur.in/wp-content/uploads/2019/08/Badi-Lake-Discover-Udaipur.jpg',
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
                          'https://imvoyager.com/wp-content/uploads/2020/01/DSC_0593-1024x683.jpg',
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
                          'https://imvoyager.com/wp-content/uploads/2020/01/DSC_0585-1024x683.jpg',
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
                          'http://1.bp.blogspot.com/-5a0Uvr2e9aA/Uj7J1V6vC7I/AAAAAAAAAGM/KqYtmArql6Q/s1600/DSCN0168.jpg',
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
                      " \n           Lake Badi, situated in Udaipur city in the Indian state of Rajasthan, is an artificial fresh water lake. The lake was built in the village of Badi, about 12 km from the city of Udaipur, by Maharana Raj Singh\n",
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
                      "           to counteract the devastating effects of a famine. He named it Jiyan Sagar after his mother Jana Devi. The lake covers an area of 155 km2., and has an embankment 180 m. long and 18 m. wide, which is graced by three artistic chhatris (kiosks or pavilions). During the drought of 1973, the lake supplied water to the people of Udaipur..",
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
                      " \n           Devoid of any commercial activity, the Badi Lake gives a view of a never-ending expanse providing a serene and calm atmosphere to the visitors. The lake is amongst the major tourist attractions of the city..",
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

/////////////////   PICHOLA   ////////////

class Pichola extends StatefulWidget {
  const Pichola({super.key});

  @override
  State<Pichola> createState() => _PicholaState();
}

class _PicholaState extends State<Pichola> {
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
                  'https://www.treebo.com/blog/wp-content/uploads/2018/08/Lake-Pichola-in-Udaipur.jpg',
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
            " PICHOLA ",
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
              " Rameshwar Ghat, \n City Palace Complex,\n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
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
                  'https://www.tourmyindia.com/images/pichola-lake3.jpg',
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
                  'https://upload.wikimedia.org/wikipedia/commons/d/d2/Udaipur_Lake_India.JPG',
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
                  'https://travelogyindia.b-cdn.net/blog/wp-content/uploads/2019/06/Taj-Lake-Palace-Udaipur.jpg',
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
                  'https://upload.wikimedia.org/wikipedia/commons/d/d2/Udaipur_Lake_India.JPG',
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
              " \n           Lake Pichola, situated in Udaipur city in the Indian state of Rajasthan, is an artificial fresh water lake, created in the year 1362, named after the nearby Picholi village.\n",
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
              "          It is one of the several contiguous lakes, and developed over the last few centuries in and around the famous Udaipur city. The lakes around Udaipur were primarily created by building dams to meet the drinking water and irrigation needs of the city and its neighbourhood. Two islands, Jag Niwas and Jag Mandir are located within Pichola Lake, and have been developed with several palaces to provide views of the lake.",
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
                    " \n           Three of the numerous lakes found in the vicinity of Udaipur which connect with the Pichola lake and the Swaroop Sagar Lake connected by an arched bridge built by Maharana Swaroop Singh (1842-1861) which in turn connects to the Fateh Sagar Lake, the crystal watered lake in the midst of tree lined hills and the smaller Arsi Vilas.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

/////////////////   RAJSAMAND   ////////////

class Rajsamand extends StatefulWidget {
  const Rajsamand({super.key});

  @override
  State<Rajsamand> createState() => _RajsamandState();
}

class _RajsamandState extends State<Rajsamand> {
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcucV6S4yP0ugErU4oapFWPlDB8mq3g_0vKTX2As9s_EgDDrjRgjVAZc0l1hTrHCKdv3U&usqp=CAU',
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
            " RAJSAMAND ",
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
              "Rajsamand in the Rajsamand district \n Udaipur, Rajasthan,\n Pincode: 313001,\n India",
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQUIUDjYo5FHbExgTVQCT9yPKgAlPdYlvorQLsiiHrjy0a-JEg5fULzacDOEuHw6Ix0Q&usqp=CAU',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxdmUUm1ESp0jmF5yXfkaJnVFx2jjxAIaM3dGLi8BZULLdOmniNKvYhoDhZVh9W3dBq_c&usqp=CAU',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7u7LaDd67Raw669gSFNZG6_ff8VmeOI--jkUyBQadvafyemxVaBlT42Jqmfb_bkN6ADk&usqp=CAU',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP0PIW5k0ylmTfDm8DmumgAb00ndoIdbYNjmcthJniIY7tpTNsPzXRMVM97S8WXSMKMEY&usqp=CAU',
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
                    " \n           Rajsamand Lake is one of the five popular lakes of Udaipur. Located 66kms in the north of Udaipur, Rajsamand Lake lies between Rajnagar and Kankroli. The lake is also known by the name of Rajsamudra Lake in Rajasthan. Rajsamand Lake was built by Maharana Raj Singh in 1660. Noticing the statistics, the lake stretches to the length of 4 miles and 1.75 miles in width. The lake has the approximate depth of 60 feet.\n",
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
                    "           River Gomti is the main supplier of water to Rajsamand Lake. This lake also boasts of a glorious dam that was built in the 17th century. On the southern end of the lake, the huge embankment is all made in white marble. It has marble terraces and stone steps that touch the waters of the lake. Here, one can also see the five toranas (weighing arches), where Maharana Raj Singh and his descendants organized the event of Tuladan (Kings used to weigh themselves in gold and then distributed it amongst the Brahmans).",
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
                    " \n           On the embankment of the lake, there domicile nine pavilions or 'Nauchowki', which were constructed by Maharana Raj Singh. The beautifully carved pavilions are festooned with pictures of the Sun, chariots, Gods, birds and wonderful carvings. The history of Mewar is inscribed in 1017 stanzas, on twenty seven marble slabs, that are called as 'Raj Prasasti'. It has also been acclaimed as one of the longest etchings acknowledged in India.\n\n            If we turn the pages of Historical facts, Rajsamand Lake also made the seaplane base of Imperial Airways during World War II, for over six years. If you are visiting Kankroli, enjoy the fabulous scenery of Rajsamand Lake from Dwarkadhish Temple that is discussed in our section of Temples. While traveling to Kumbhalgarh, you can trace the most amazing site of Rajsamand Lake.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

/////////////////   UDAISAGAR  ////////////

class Udaisagar extends StatefulWidget {
  const Udaisagar({super.key});

  @override
  State<Udaisagar> createState() => _UdaisagarState();
}

class _UdaisagarState extends State<Udaisagar> {
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
                      'https://www.tourmyindia.com/images/udai-sagar-lake1.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 1, bottom: 1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 221, 248, 221)),
            child: Text(" UDAISAGAR ",
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
                      'https://www.tourmyindia.com/images/udai-sagar-lake2.jpg',
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
                      'https://static.toiimg.com/thumb/msid-58271393,width-1280,height-720,resizemode-4/.jpg',
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
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/fc/6b/b5/udai-sagar-evening.jpg?w=1200&h=1200&s=1',
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
                      'https://www.royalharbinger.com/upload/10902.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(" > HISTORY:",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20.6,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 9, 73, 126))))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                    " \n          Udaisagar Lake, one of the five prominent lakes of Udaipur,[1] is situated around 13 km in the east of Udaipur. This lake was built by Maharana Udai Singh in 1565. Udai Sagar Lake is around 4 km in length, 2.5 km in width and 9 meters deep at the maximum.[2] It is fed by the Ahar River.\n",
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
                    "           In 1559, Maharana Udai Singh constructed a dam on Berach River to ensure adequate supply of water in his kingdom. Udai Sagar Lake was developed as an outcome of this dam. This dam at Udaisagar Lake drains about 479 km2, and covers an area of 10.5 km2.",
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
                    " \n           According to a study made on the environmental pollution of Udaisagar,[6] Udai sagar lake's water revealed high phosphate contents, due to discharge of pollutants from surrounding phosphorite mines, chemical factories, distillery, sewage and domestic waste from settlements and hotels. All these pollutants, reaching this lake through the River Ahar, make the water unhygienic for human consumption and unfavourable for survival of aquatic life.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Travelogue/Temple.dart';
import 'package:project/Travelogue/properties.dart';
import 'package:sizer/sizer.dart';

var propery = properties();

class Palace extends StatefulWidget {
  const Palace({super.key});

  @override
  State<Palace> createState() => _PalaceState();
}

class _PalaceState extends State<Palace> {
//   @override
//   Widget build(BuildContext context) {
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
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         children: [
//                           GestureDetector(
//                             onTap: () {},
//                             child: Container(
//                               height: 150,
//                               width: 150,
//                               margin: EdgeInsets.only(top: 10),
//                               child: Image.asset(
//                                 'assets/images/vintage.jpg',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Text(
//                             " VINTAGE ",
//                             style: TextStyle(
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 20,
//                                 color: Color.fromARGB(255, 1, 13, 107),
//                                 fontWeight: FontWeight.w700),
//                           ),
//                         ],
//                       ),
//                       Column(children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Taj_Lake(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(top: 10),
//                             child: Image.asset(
//                               'assets/images/taj lake.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " TAJ LAKE ",
//                           style: TextStyle(
//                               fontStyle: FontStyle.normal,
//                               fontSize: 20,
//                               color: Color.fromARGB(255, 1, 13, 107),
//                               fontWeight: FontWeight.w700),
//                         )
//                       ])
//                     ]),
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
//                                   builder: (context) => Sajjangarh(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/sajjangarh.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " SAJJANGARH ",
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
//                                   builder: (context) => Maharana(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/maharana.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " MAHARANA ",
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
//                                   builder: (context) => Haldi_Ghaati(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/haldi ghaati.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " HALDI GHAATI ",
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
//                                   builder: (context) => City(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/city.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " CITY ",
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
//                                   builder: (context) =>
//                                       Bharatiya_Lok_Kala_Museum(),
//                                 ));
//                           },
//                           child: Container(
//                             height: 150,
//                             width: 150,
//                             margin: EdgeInsets.only(bottom: 10, top: 10),
//                             child: Image.asset(
//                               'assets/images/bharatiya lok kala museum.jpg',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           " BHARATIYA LOK KALA MUSEUM ",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            //scrollDirection: Axis.vertical,
            // child:
            Container(
                padding: EdgeInsets.all(14.0),
                child: GridView.builder(
                    itemCount: propery.palaceimages.length,
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
                                        propery.palaceList[index]));
                          },
                          child: Container(
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(image: AssetImage(images[index]))),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Image.asset(
                                      propery.palaceimages[index],
                                      fit: BoxFit.cover,
                                    )),
                                Text(
                                  propery.palacename[index],
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
/////////////////   VINTAGE      //////////

class Vintage extends StatefulWidget {
  const Vintage({super.key});

  @override
  State<Vintage> createState() => _VintageState();
}

class _VintageState extends State<Vintage> {
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
                        ))),
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
////////////////   TAJ LAKE      ////////////

class Taj_Lake extends StatefulWidget {
  const Taj_Lake({super.key});

  @override
  State<Taj_Lake> createState() => _Taj_LakeState();
}

class _Taj_LakeState extends State<Taj_Lake> {
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
                  'https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Lake_Palace_Udaipur/images/images2021/TLP_The_Mewar_Terrace.png/jcr:content/renditions/cq5dam.web.323.323.png',
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
            " TAJ LAKE ",
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
              "Pichola, \n Udaipur,\n Pincode: 313001\nPhone: 0294 242 8800",
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
                ))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Lake_Palace_Udaipur/images/images2021/TLP_ShambhuPrakashLR_0490-Grand-Presedential-Suite.jpg/jcr:content/renditions/cq5dam.web.323.323.jpeg',
                  ),
                  fit: BoxFit.cover),
            )),
        Container(
          margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                  'https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Lake_Palace_Udaipur/images/images2021/TLP_ShambhuPrakash_grand-Presedential-Suite.jpg/jcr:content/renditions/cq5dam.web.323.323.jpeg',
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
                  'https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Lake_Palace_Udaipur/images/images2021/TLP_Lily-Pond.png/jcr:content/renditions/cq5dam.web.323.323.png',
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
                  'https://www.tajhotels.com/content/dam/luxury/hotels/Taj_Lake_Palace_Udaipur/images/images2021/TLP_KushMahal_4131-Grand-Royal-Suite.jpg/jcr:content/renditions/cq5dam.web.323.323.jpeg',
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
              " \n           The Lake Palace was built between 1743 and 1746[1] under the direction of the Maharana Jagat Singh II (62nd successor to the royal dynasty of Mewar) of Udaipur, Rajasthan as a summer palace. It was initially called Jagniwas or Jan Niwas after its founder.\n",
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
              "           The palace was constructed facing east, allowing its inhabitants to pray to Surya, the Hindu sun god, at the crack of dawn.[2] Jagat Singh felt that the City Palace was too public to invite the beautiful young ladies of Udaipur with decadent, moonlit picnics. Therefore a palace in the centre of Lake Pichola would offer a lot more privacy.[3] The successive rulers used this palace as their summer resort, holding their regal durbars in its courtyards lined with columns, pillared terraces, fountains, and gardens.",
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
                  " \n           The upper room is a perfect circle and is about 21 feet (6.4 m) in diameter. Its floor is inlaid with black and white marble, the walls are ornamented with niches and decorated with arabesques of colored stones, the dome is exquisitely beautiful in form.\n\n           During the famous Indian Sepoy Mutiny in 1857, several European families fled from Nimach and used the island as an asylum, offered to them by Maharana Swaroop Singh. To protect his guests, the Rana destroyed all the town's boats so that the rebels could not reach the island.[2]",
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

////////////////    SAJJANGARH    ///////////

class Sajjangarh extends StatefulWidget {
  const Sajjangarh({super.key});

  @override
  State<Sajjangarh> createState() => _SajjangarhState();
}

class _SajjangarhState extends State<Sajjangarh> {
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Monsoon_Palace%2C_Udaipur.jpg/800px-Monsoon_Palace%2C_Udaipur.jpg',
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
            " SAJJANGARH ",
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
              "11monsoon colony, \n Sajjangarh Rd,\n near Mewar Garh hotel, \nEklavya Colony, \nUdaipur \n Pincode: 313001",
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSowppbKDW_j2HMtm4cl9DVSeMUYM0GAQFGESSfrIsDYmFZoabIyCmsTYDIT9foh6dzVMQ&usqp=CAU',
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
                  'https://www.tourmyindia.com/images/monsoon-palace1.jpg',
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
                  'https://www.hoteldekho.com/storage/img/tourattraction/1646128386Sajjangarh%20Palace.jpg',
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR29eUthRTdzazX_AnSTHCBRjjoywQUlleoXuVcmqU4U5bZqzHUt98jmWqsyXS6HZFx_ng&usqp=CAU',
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
              " \n           The History of the palace reflects the history of the Mewar kingdom. Maharana Sajjan Singh, (b. 18 July 1859 d. 23 December 1884), the initial builder of the Monsoon Palace was the seventy–second ruler of the Mewar dynasty (1874–1884) and ruled from Udaipur for a short period of 10 years until his untimely death. The Mewar dynasty traces its history to Guhil, who founded the Mewar State in 568 AD.[7] Sajjan Singh came to the throne when he was 15 years old. However, his uncle Sohan Singh challenged his right to the crown and even plotted through astrologers, who said the timing for the coronation was not appropriate.\n",
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
              "           Fortunately for him the then British agent, who was in favour of Sajjan Singh, intervened and persuaded the astrologers to give a favourable date for the crowning. The eventual Coronation of Sajjan Singh took place two years after this. As the trouble-maker uncle was still persisting with his obstructions towards the newly crowned Maharana, his property was confiscated and he was eventually imprisoned.\n  he was invested in 1876 as Maharana, he was considered an enlightened ruler and a 'man of vision'. \n\n            He launched a massive programme of developmental activities in his kingdom, in particular, enlarging infrastructure facilities such as roads, water supply and other civil works. He also introduced civil administration and courts. He also improved the general environment of Udaipur by afforestation and lake improvements. He had Lake Pichola desilted and the masonry dam re-built to improve storage capacity, as well as preserving the historical heritage in line with his personal interest in the arts and culture. The most ambitious project he undertook was building the Sajjan Garh Palace, or the Monsoon Palace, as a western backdrop to Udaipur city.",
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
                  " \n           It was during Sajjan Singh's rule that Udaipur gained recognition as the second Municipality in India, after Bombay. In recognition of his outstanding achievements in preserving and developing the Mewar kingdom, and to remind him that his was a princely state under the British Raj, he was conferred the title of 'Grand Commander of the Star of India' in November 1881 by Lord Ripon, on the occasion of Queen Victoria's crowning as the Empress of India.",
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

////////////////    MAHARANA    ///////////

class Maharana extends StatefulWidget {
  const Maharana({super.key});

  @override
  State<Maharana> createState() => _MaharanaState();
}

class _MaharanaState extends State<Maharana> {
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
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/db/06/18/maharana-pratap-museum.jpg?w=800&h=-1&s=1',
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
                    " MAHARANA PRTAP MUSEUM ",
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
                      "Haldighati, \nNathdwara, \nUdaipur,Rajasthan \nPincode:313001",
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
                          'https://www.google.com/maps/uv?pb=!1s0x39680f0522c14b69%3A0x7f1046ab04546fe9!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipPpo2bxMbd5FY49-qBlMTi1e7xWm7nqr3ed1-7V%3Dw260-h175-n-k-no!5smaharana%20pratap%20museum%20udaipur%20address%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMoDgdZ1tE-RR71VI_iTVPfVnvgTYZ0JaYnIX7k&hl=en&sa=X&ved=2ahUKEwiZzbuit4_8AhWeT2wGHRqCDZ4Q7ZgBKAB6BAgcEAI#',
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
                          'https://www.maharanapratapmuseum.com/images/museum-photo1.jpg',
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
                          'https://content3.jdmagicbox.com/comp/udaipur-rajasthan/b8/9999px294.x294.141220103100.w9b8/catalogue/maharana-pratap-memorial-udaipur-ho-udaipur-rajasthan-tourist-attraction-mv1t3sz.jpg',
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
                          'http://1.bp.blogspot.com/-8Uu7trKnhmA/VcTaS9qagWI/AAAAAAAABYo/O0YTuHWMRiM/s1600/DSC_0270_1.jpg',
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
                      " \n           Maharana Pratap was born to Udai Singh II of Mewar and Jaiwanta Bai.[5][6][7] His younger brothers were Shakti Singh, Vikram Singh and Jagmal Singh. Pratap also had 2 stepsisters: Chand Kanwar and Man Kanwar. He was married to Ajabde Punwar of Bijolia[8] and he had married 10 other women and was survived by 17 sons and 5 daughters including Amar Singh I.[9] He belonged to the Royal Family of Mewar.[10] After the death of Udai Singh in 1572, Rani Dheer Bai wanted her son Jagmal to succeed him[11] but senior courtiers preferred Pratap, as the eldest son, to be their king. The desire of the nobles prevailed. Udai Singh died in 1572, and Prince Pratap ascended the throne as Maharana Pratap, the 54th ruler of Mewar in the line of the Sisodia Rajputs.[12] Jagmal swore revenge and left for Ajmer, to join the armies of Akbar, and obtained the town of Jahazpur as a Jagir as a gift in return for his help.\n",
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
                      "           Maharana pratap holds a uniqe position in the history of india. His unique example of combating the mighty mughals, with a meagre manpower is rare in the history of the world.Maharana Pratap Museum, Welcomes you to Haldighati, the land of bravery, sacrifice and great history. Haldighati plays an important role in the Indian History. Massive battle held here between the Mughals and Maharana Pratap. Here at our Musuem We have tried our best to provide you all the information about the Great Legend Maharana Pratap. We have displayed almost every thing and covered every aspects to take you back in that aera. In 2003 an imaginative museum dedicated to the great Maharana opened, and was unsurprisingly named the Maharana Pratap Museum, Haldighati.",
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
                      " \n           Haldighati provided him the best opportunity. He observed that the Mughal forces had camped on a large ground in the valley, which later came to be known as Badshah Bagh. Rana enticed the forces to march towards the treacherous valley, where he had strategically placed the gallant Bhil tribals.",
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

///////////////     HALDI GHAATI  /////////

class Haldi_Ghaati extends StatefulWidget {
  const Haldi_Ghaati({super.key});

  @override
  State<Haldi_Ghaati> createState() => _Haldi_GhaatiState();
}

class _Haldi_GhaatiState extends State<Haldi_Ghaati> {
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Turmeric_colour_soil_in_Haldigthati_.jpg/330px-Turmeric_colour_soil_in_Haldigthati_.jpg',
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
            " HALDIGHATII ",
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
                      'https://udaipurtourism.co.in/images//tourist-places/haldighati-udaipur/haldighati-udaipur-indian-tourism-entry-ticket-price.jpg',
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
                      'https://i2.wp.com/discoverudaipur.in/wp-content/uploads/2020/03/haldighati-udaipur-indian-tourism-location-address.jpg?resize=750%2C400&',
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjcbYM54wHZbPdb1TCudn4kwidHx3p7uXV-9b4bMxnO_6CVRZYbc3nAZc8BgGX6lheWJg&usqp=CAU',
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
                      'https://thumbs.dreamstime.com/b/gangani-garhbeta-medinipur-west-bengal-india-red-soil-plateau-area-grand-canyon-bengal-bank-konshaboti-241251303.jpg',
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
                    " \n           Haldighati is a mountain pass between Khamnore and Balicha village situated at Aravalli Range of Rajasthan in western India which connects Rajsamand and Udaipur districts. The pass is located at a distance of 44 kilometres from Udaipur. The name 'Haldighati' is believed to have originated from the turmeric-coloured yellow soil of the area.\n",
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
                    "           The mountain pass is a significant historical location. Rakt Talai in Khamnore is the site of the Battle of Haldighati, which took place in 18 June 1576 between of the Kingdom of Mewar and the Mughal Army led by Kunwar Man Singh. Maharana Pratap led the armed forces of Mewar against the Mughals who fought under the command of Mughal emperor Akbar's general Man Singh I of Amber.",
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
                    " \n           Maharana Pratap's horse Chetak played a pivotal role in the Battle of Haldighati. Chetak was fatally wounded in this battle and died on 18 June 1576. Maharana Pratap erected a small monument for his horse at the place where Chetak fell down. The cenotaph still exists at Haldighati.\n\n          The Government of India commissioned the construction of Maharana Pratap National Memorial in the year 1997, and in June 2009 the monument was finally opened.[2] The memorial features a bronze statue of the Maharana astride Chetak. Although it is still waiting for announcement as National Monument.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////     CITY  /////////////

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
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
                      'https://www.holidify.com/images/cmsuploads/compressed/3137_20190428132918.jpg',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 1, bottom: 1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 221, 248, 221),
            ),
            child: Text(" CITY PALACE ",
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
                    "City Palace Complex,\n Udaipur,Rajasthan,\n Pincode: 313001, ",
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
                      'https://holidify.com/images/attr_wiki/compressed/attr_wiki_842.jpg',
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
                      'https://holidify.com/images/attr_wiki/compressed/attr_wiki_837.jpg',
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
                      'https://holidify.com/images/attr_wiki/compressed/attr_wiki_847.jpg',
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
                      'https://holidify.com/images/attr_wiki/compressed/attr_wiki_845.jpg',
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
                    " \n           The City Palace was built concurrently with the establishment of the Udaipur city by Maharana Udai Singh II and his successor Maharanas over a period of the next 400 years. The Maharanas lived and administered their kingdom from this palace, thereby making the palace complex an important historic landmark.\n",
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
                    "           The Mewar kingdom was flourished initially in Nagda (30 kilometres (19 mi) to the north of Udaipur), established in 568 AD by Guhil, the first Maharana of Mewar. In the 8th century, the capital was moved to Chittor, a hilltop fort from where the Sisodias ruled for 800 years. Maharana Udai Singh II inherited the Mewar kingdom at Chittor in 1537 but by that time there were signs of losing control of the fort in wars with the Mughals. Udai Singh II, therefore, chose the site near Lake Pichola for his new kingdom as the location was well protected on all sides by forests, lakes and the Aravalli hills. He had chosen this site for his new capital, much before the sacking of Chittor by Emperor Akbar, on the advice of a hermit he had met during one of his hunting expeditions.",
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
                    " \n           The earliest royal structure he built here was the Royal courtyard or 'Rai Angan',[9][10][11] which was the beginning of the building of the City Palace complex. The court was built at the location where the hermit had advised Maharana to build his new capital.\n\n            Udai Singh's death in 1572, his son Maharana Pratap took the reins of power at Udaipur. Later, in the famous Battle of Haldighati, which end on stalemate against the Mughal Emperor Akbar in the year 1576. After the death of Maharana Pratap, Amar Singh I took the reins of power at Udaipur.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromARGB(255, 7, 91, 160)))))
      ])
    ]))));
  }
}

////////////////    BHARATIYA LOK KALA MUSEUM      //////////////

class Bharatiya_Lok_Kala_Museum extends StatefulWidget {
  const Bharatiya_Lok_Kala_Museum({super.key});

  @override
  State<Bharatiya_Lok_Kala_Museum> createState() =>
      _Bharatiya_Lok_Kala_MuseumState();
}

class _Bharatiya_Lok_Kala_MuseumState extends State<Bharatiya_Lok_Kala_Museum> {
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7BL_8bOGK6DMLYV6Msi_67dcvWi-KejFHBw&usqp=CAU',
                    ),
                    fit: BoxFit.cover))),
        Container(
            margin: EdgeInsets.only(top: 1, bottom: 1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 221, 248, 221),
            ),
            child: Text(" BHARATIYA LOK KALA MUSEUM ",
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
                  "Saheli Marg,\n Madhuban,\n Udaipur, Rajasthan, \n Pincode: 313001, ",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
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
                child: Text(
                  " > IMAGES:",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 20.6,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 9, 73, 126)),
                ))),
        Container(
            margin: EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 5),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                      'https://imgcld.yatra.com/ytimages/image/upload/t_yt_blog_c_fill_q_auto:good_f_auto_w_800_h_500/v1540800004/DO_NOT_USE_Editorial_Images/Bhartiya_Lok_Kala_Mandal_Udaipur1_1540799142.jpg',
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
                      'https://d3gw4aml0lneeh.cloudfront.net/assets/locations/15196/9DxvX989NXxu.jpg',
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRa5XtT9Zx2cbzUnwQLf0dsWta7KtbpVVM19XoYpK63I0XJo60xQ7i2Myp_PzaXUEatqk&usqp=CAU',
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJXdBygBd8cyxYRxxzn0_OwLB5QTwbW5l_Tuj5d766pwzgvvrFXUNqaJIRYgy-x_5sAoE&usqp=CAU',
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
                  " \n           Bhartiya Lok Kala Museum is one of the most famous museums of Udaipur, exhibiting the brilliant collection of folk articles of Rajasthan. This rare compilation varies from typical rural-dresses, ornaments, puppets, masks, dolls, folk musical instruments, folk deities and paintings. The museum is comfortably located in the building of Bhartiya Lok Kala Mandal near Chetak Circle in Udaipur city.\n",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 7, 91, 160)),
                ))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  "           Mewar region of Rajasthan is known for its rich art and culture. Actually, the local handicrafts and things of art of this region have always been cherished all over the world. With the intention to maintain this rich tradition, Bhartiya Lok Kala Mandal took the initiative, to start an institution, to encourage the local arts and crafts of Mewar. Bhartiya Lok Kala Museum is a part of their program that displays the best art and craft of Mewar.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 7, 91, 160)),
                ))),
        Container(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(top: 1, left: 1),
                child: Text(
                  " \n           As one enters the gateway of the museum, there is a hall displaying the theater objects. In the neighboring hall, you will trace a remarkable collection of tribal folk musical instruments and ornaments. Following this hall, you would reach to a puppet theater. You can actually watch a puppet show that occurs at regular intervals. On the opposite side of this theater, there are designs of henna handprints, decorated cow dung floors and terra-cotta devras (small shrines) that come from the village of Molela near Nathdwara.\n\n          The museum portrays the remarkable collection of over past 44 years, gathered by the Bhartiya Lok Kala Mandal. To provide a summarized idea of the folk heritage of India, traditional attires, ornaments, miniature paintings and many other art objects are displayed here. Bhartiya Lok Kala Museum of Udaipur definitely requires a visit to closely observe the artistic and culturally rich region of Rajasthan.",
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

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Travelogue/palace.dart';
import 'package:project/Travelogue/properties.dart';

var propery = properties();

class Temple extends StatefulWidget {
  const Temple({super.key});

  @override
  State<Temple> createState() => _TempleState();
}

class _TempleState extends State<Temple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: propery.templeimages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => propery.templelist[index],
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
                          propery.templeimages[index],
                          fit: BoxFit.cover,
                        )),
                    Text(
                      propery.templename[index],
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

class Gupteshwar extends StatefulWidget {
  const Gupteshwar({super.key});

  @override
  State<Gupteshwar> createState() => _GupteshwarState();
}

class _GupteshwarState extends State<Gupteshwar> {
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

class Jagdish extends StatefulWidget {
  const Jagdish({super.key});

  @override
  State<Jagdish> createState() => _JagdishState();
}

class _JagdishState extends State<Jagdish> {
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

class Jagmandir extends StatefulWidget {
  const Jagmandir({super.key});

  @override
  State<Jagmandir> createState() => _JagmandirState();
}

class _JagmandirState extends State<Jagmandir> {
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

class Mahakaleshwar extends StatefulWidget {
  const Mahakaleshwar({super.key});

  @override
  State<Mahakaleshwar> createState() => _MahakaleshwarState();
}

class _MahakaleshwarState extends State<Mahakaleshwar> {
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

class Mahalaxmi extends StatefulWidget {
  const Mahalaxmi({super.key});

  @override
  State<Mahalaxmi> createState() => _MahalaxmiState();
}

class _MahalaxmiState extends State<Mahalaxmi> {
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

class Sahastra_Bahu extends StatefulWidget {
  const Sahastra_Bahu({super.key});

  @override
  State<Sahastra_Bahu> createState() => _Sahastra_BahuState();
}

class _Sahastra_BahuState extends State<Sahastra_Bahu> {
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

class Eklingji extends StatefulWidget {
  const Eklingji({super.key});

  @override
  State<Eklingji> createState() => _EklingjiState();
}

class _EklingjiState extends State<Eklingji> {
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

class Manshapurna extends StatefulWidget {
  const Manshapurna({super.key});

  @override
  State<Manshapurna> createState() => _ManshapurnaState();
}

class _ManshapurnaState extends State<Manshapurna> {
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

class Bohara_Ganesh extends StatefulWidget {
  const Bohara_Ganesh({super.key});

  @override
  State<Bohara_Ganesh> createState() => _Bohara_GaneshState();
}

class _Bohara_GaneshState extends State<Bohara_Ganesh> {
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

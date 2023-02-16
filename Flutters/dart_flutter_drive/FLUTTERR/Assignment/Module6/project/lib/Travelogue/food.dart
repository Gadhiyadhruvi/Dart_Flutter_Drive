import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<String> images = [
    "assets/images/Sangam-Barfifood.jpg",
    "assets/images/gattekisabjifood.webp",
    "assets/images/Mawa-Kachorifood.jpg",
    "assets/images/kachorifood.webp",
    "assets/images/kulhadcoffeefood.webp",
    "assets/images/dalbatifood.webp",
    "assets/images/ghevarfood.webp",
    "assets/images/kadhipakorafood.webp",
    "assets/images/imartifood.jpg",
    "assets/images/faloodafood.webp",
    "assets/images/minimirchibadafood.webp",
    "assets/images/malaighewarfood.jpg",
    "assets/images/kersangrifood.webp",
    "assets/images/malpuafood.webp",
  ];
  List<String> text = [
    " SANGAM BARFI ",
    " GATTE KI SABJI",
    " MAVA KACHORI",
    " KACHORI",
    " KULHAD COFFEE",
    " DALBATI",
    " GHEVAR",
    " KADHI PAKODA ",
    " IMARTI",
    "FALOODA",
    "MINI MIRCHI BADA",
    "MALAI GHEVAR",
    "KERSANGRI",
    "MALPUA",
  ];
  List foodtitleList = [
    Sangam_Barfi(),
    Gatte_Ki_Sabji(),
    Mava_Kachori(),
    Kachori(),
    Kulhad_Coffee(),
    Dal_Bati(),
    Ghevar(),
    Kadhi_Pakora(),
    Imarti(),
    Falooda(),
    Mini_Mirchi_Bada(),
    Malai_Ghevar(),
    Kersangri(),
    Malpua(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => foodtitleList[index]));
                      },
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                            SizedBox(
                                width: double.maxFinite,
                                height: 150,
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              text[index],
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

//////////////    SANGAM BARFI   //////////

class Sangam_Barfi extends StatefulWidget {
  const Sangam_Barfi({super.key});

  @override
  State<Sangam_Barfi> createState() => _Sangam_BarfiState();
}

class _Sangam_BarfiState extends State<Sangam_Barfi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://cdn.shopify.com/s/files/1/0583/8618/6391/products/1023914e-b6ef-4aaf-8e9b-aa993dbed972_1_1024x1024@2x.jpg?v=1661245395',
                            ),
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
                        "Sangam Barfi ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuwc3fLybwxucJQgv-a2gIiFI353J6pPx3Iow9HliIetTGgRf7HVdI5TZregg1JAiOHE&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyMf1eALBKIvxvoW565Rfguk6_kA16gX2DxA&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv0I2KKC_FLy09ewIY_kieSPRUaQvHjaBoxQ&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuMf3UN5A7i8UAKhksgqrA0gqt1WLAKYjYM7Bmuh1Zt1iEXbpkEwvqHOBvxWUwggi3J5E&usqp=CAU',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}
////////////    GATTE KI SABJI   //////////

class Gatte_Ki_Sabji extends StatefulWidget {
  const Gatte_Ki_Sabji({super.key});

  @override
  State<Gatte_Ki_Sabji> createState() => _Gatte_Ki_SabjiState();
}

class _Gatte_Ki_SabjiState extends State<Gatte_Ki_Sabji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG9mHryGL8_3n7Xmu6lDmYycpz3_e2cPYWsR5LEsV6dzMIAL5ETfYWJVYwjPAAqgVKqzA&usqp=CAU',
                            ),
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
                        " Gatte Ki Sabji ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4N7U0FWXajm9BvWPoUPwkmwuJ11114-bmOTFxEfAoMoHnVPSx24C7iPGCvyc6kGKzsLM&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXnh-AutC_kMDti4T70ppPl6O4alCHdmVWI3Du3C3rdRw2SeXc2M2M9YEAO2Xx9jjnmkc&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.shutterstock.com/image-photo/besan-gatte-ki-sabzi-gatta-260nw-2054894093.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2K_r4yzr9tC8tC1hbnP-iYYp7ZqgNxDjbc8Q1crVxf3xyAMYY25lvCXpUs-DdOEBZJkg&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyS5eVrUxxc0M_df7XINSPT-bfTVMK3ySuq37hKrfB0dWal0fq7FkJdofkEOf_rzJfmvs&usqp=CAU',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////////     MAVA KACHORI   ///////

class Mava_Kachori extends StatefulWidget {
  const Mava_Kachori({super.key});

  @override
  State<Mava_Kachori> createState() => _Mava_KachoriState();
}

class _Mava_KachoriState extends State<Mava_Kachori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrNilj9f_3mmfe0ypa7G4PgXuDi7tqZrXCsw2SRAzXMLtVsp58muyOmMHcu7aNuoZIvTU&usqp=CAU',
                            ),
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
                        " Mava Kachori ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaMZPSBK3K5rD-ch2rLg-ITAOhje8NLVxjbHS7Aj1mPrF53obS7Lm5Yf5OHbBgGw6vrg8&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3UmpK2kQUnWf3qv3xyWg_Mtb9YWZWjDM148h-mN9fxrDYfAyVnFnFCj1Zbf34w9JoLkc&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrNilj9f_3mmfe0ypa7G4PgXuDi7tqZrXCsw2SRAzXMLtVsp58muyOmMHcu7aNuoZIvTU&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuy_cr13n54ervEsOMuzieULdEm_9yVkyUoulZ1hl3HYpS5P9M0DChZQC6wwhlKhtFeRI&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA-pOmiUt4ssGtAkvjD-TbgigAV4e61KLdCbc31AT0IbF7gaZsXMh63GtJHxUNm2UZnfs&usqp=CAU',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

/////////////    KACHORI   ////////

class Kachori extends StatefulWidget {
  const Kachori({super.key});

  @override
  State<Kachori> createState() => _KachoriState();
}

class _KachoriState extends State<Kachori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQfwgYjCVP9tCD4yx4chZvTTvkgOtq7MLrv0ie16Os3pKz1mbO61t0C8mHunoWf2LBhc&usqp=CAU',
                            ),
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
                        " Kachori ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/01/Daal-Baati.jpg",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbVZ6x2lbtrhHyAJQLEkzZtFjQ8fR0yB1V4DqxYjAvldaX1cJf_1UDaV0I_jcUh_604NU&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNoeje4hoK1jAn9jrfweTArSLizHYmpMWS9FsiQ2PUzEXe3J0UvW997ff-kHcb0RqhKy8&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdZPV50Rulxxu3zieeh8WSDX_TazH9oREDzgvxKTnGc5t8TEkyiR8Xnu2727VMuO63-B4&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmcJs_oUdMFFX5SFYV2bf6UZKiKiG1fnljV3l2Vo20z0wTJz0ytT6dyzrw8--4ZZ6A6y0&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

///////////     KULHAD COFFEE    /////////

class Kulhad_Coffee extends StatefulWidget {
  const Kulhad_Coffee({super.key});

  @override
  State<Kulhad_Coffee> createState() => _Kulhad_CoffeeState();
}

class _Kulhad_CoffeeState extends State<Kulhad_Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://www.cityshor.com/uploads/article/06_2019/1560781236_web_5.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 245, 219, 227),
                ),
                child: Text(
                  "Kulhad Coffee ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ),
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
                          "EQUIPMENT & BAKKING :",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 23.6,
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
                  child: Icon(Icons.lock_clock),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " prep in\n15min",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      " Cook in\n40min",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 22.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Total in\n50min",
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
                  child: Icon(Icons.cookie),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Makes:\n4 Servings",
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
                    color: Color.fromARGB(255, 119, 82, 198),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.image),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Images",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        )))
              ])),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 350,
                      child: CarouselSlider(
                        items: [
                          Image.network(
                            "https://www.udaipurblog.com/wp-content/uploads/2018/06/twitter-1.jpg",
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://www.udaipurblog.com/wp-content/uploads/2018/06/royal-brewmen-768x768.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://www.udaipurblog.com/wp-content/uploads/2018/06/lazy-beans-768x576.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://www.slurrp.com/web/_next/image?url=https%3A%2F%2Fimages.slurrp.com%2Fprod%2Farticles%2Ftitpzcj1un.webp%3Fimpolicy%3Dslurrp-20210601%26width%3D1200%26height%3D675&w=1200&q=75',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxCvocNbS-g84m6WHS4I8BC8YPceevtzWnUA&usqp=CAU',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
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
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          //onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                          "INGREDIENTS:",
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
                        "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 25.6,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 9, 73, 126)),
                      ))),
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
                          "RECEIPES:",
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
                    "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 25.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////    DAL BATI   ///////////

class Dal_Bati extends StatefulWidget {
  const Dal_Bati({super.key});

  @override
  State<Dal_Bati> createState() => _Dal_BatiState();
}

class _Dal_BatiState extends State<Dal_Bati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQZigu08SF-lijkTOhrhhycjWFmoRjZBFw4ix2BwF0j5rNctXOC04Ak5tcML3u_XqNMHU&usqp=CAU'),
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
                        " Dal Bati ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnooAurzk5o0yPr4rGifb8cFom2sBKe3oRexBLSrszmOWt0unYAP5Yo3FkAObQYREUT7A&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAuTSdIjohI4eHAxMGUGpFkCXAflso3ySWv7k126lILC6KL2BDNKFiEtgTZEO1ccI8NSU&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ-S9iiUnN_1z26jT28E2xAVk7uw9Cknl5zvpPq-XAUJJw-mDrZo1XQf56ByuxsYgjjW0&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3JNzdPLSHQeaTvjrwAbqG3tHGl6qLRjWwtqB_hdPzyBFJ8WrdJsP33vE3W9jTfXkJ9A&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3RxIZlwzRXZXd-ltMl7MDaQDiTDHiszwsdYOJugXgExHMS6BmMLHWD-LCTjb9wgXcvp0&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////  GHEVAR   ////////////

class Ghevar extends StatefulWidget {
  const Ghevar({super.key});

  @override
  State<Ghevar> createState() => _GhevarState();
}

class _GhevarState extends State<Ghevar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://static.punjabkesari.in/multimedia/10_05_262484102ghewar.jpg',
                      ),
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
                  "Ghevar ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                )),
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
                        "EQUIPMENT & BAKKING :",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 23.6,
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
                child: Icon(Icons.lock_clock),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        " prep in\n15min",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 22.6,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 9, 73, 126)),
                      ))),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        " Cook in\n40min",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 22.6,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 9, 73, 126)),
                      ))),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        " Total in\n50min",
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
                child: Icon(Icons.cookie),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        " Makes:\n4 Servings",
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
                  color: Color.fromARGB(255, 119, 82, 198),
                ),
                padding: EdgeInsets.all(5),
                child: Icon(Icons.image),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        " Images",
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
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6_jsEAFz7NxxYGVROyn2DIwu5j2OP1viGNV-MHeURtUmzHxs0cNK0Ivlv_snkQ5wkIU8&usqp=CAU",
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvheO5XbZeZGLY-g_dwpyywCQ0oDVeombbAobJctEbAWWZqRl0zPq_0FdjHdgMw4YS_gM&usqp=CAU",
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                        Image.network(
                          "https://s3-ap-south-1.amazonaws.com/betterbutterbucket-silver/abhi-jain20180821164827441.jpeg",
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTntBfK75YeaXhgvDAvz-pgO2xZCLSi59RCQ9i4_kfvyasn5WkfkuqgjVJ2vvM5KGrNucQ&usqp=CAU",
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                        Image.network(
                          "https://d2pyicwmjx3wii.cloudfront.net/s/573db1519f0d58741f0cc5c1/ms.products/5ea41bca6b48cc719c67cc3a/images/5ea41bca6b48cc719c67cc3b/5ea41bcf6b48cc719c67ccad/webp/5ea41bcf6b48cc719c67ccad.jpg",
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
                        "INGREDIENTS:",
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
                      "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    ))),
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
                        "RECEIPES:",
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
                      "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 25.6,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 9, 73, 126)),
                    )))
          ]),
        ),
      ),
    );
  }
}

///////////   KADHI PAKORA   ////////////

class Kadhi_Pakora extends StatefulWidget {
  const Kadhi_Pakora({super.key});

  @override
  State<Kadhi_Pakora> createState() => _Kadhi_PakoraState();
}

class _Kadhi_PakoraState extends State<Kadhi_Pakora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-3oPJO82jAXrOSDJ8VtcnH7ylqyvhn1Br_A&usqp=CAU',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 245, 219, 227),
                ),
                child: Text(
                  "CHHAGHOST FOOD ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                child: Row(
                  children: [
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
                          "EQUIPMENT & BAKKING :",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 23.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " prep in\n15min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Cook in\n40min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Total in\n50min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Makes:\n4 Servings",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 119, 82, 198),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.image),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Images",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        )))
              ])),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 350,
                      child: CarouselSlider(
                        items: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtXZvpQGZmY7oho6gpjLnPUsGdCtR_WJgWW6ESkNaYxL4EJb5r-MgKyGBc3anGebimLsU&usqp=CAU",
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://soyummyrecipes.co.uk/wp-content/uploads/2021/01/pakora-kadhi-1-1.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://storage.googleapis.com/recipesmedia/thumb/1016793_1416472149.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://3.bp.blogspot.com/-wEyF6MFByXw/XB3ZOCyjN-I/AAAAAAAAGp8/LTbhhvQ8P1wibB1xF84J9TVAaJX9jtk7ACLcBGAs/w1200-h630-p-k-no-nu/IMG_8675.JPG',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8i8PgEO_YUSg1_yuD5ofc40XDBY3Zl87iqakhH4aI7RBt7k0xCvebkZRBjO8DKugLmXU&usqp=CAU',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
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
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          //onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
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
                          "INGREDIENTS:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 25.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
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
                          "RECEIPES:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 25.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////   IMARTI   /////////////

class Imarti extends StatefulWidget {
  const Imarti({super.key});

  @override
  State<Imarti> createState() => _ImartiState();
}

class _ImartiState extends State<Imarti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 500,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAvKbicsCpOOEG3GdEpxTly7SgF89fbBVgjrMI1XKYKqyhCdTnk573Q6un83aLfnVhvKw&usqp=CAU',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 245, 219, 227),
                ),
                child: Text(
                  "Imarati ",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                      color: Color.fromARGB(255, 1, 13, 107),
                      fontWeight: FontWeight.w700),
                ),
              ),
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
                          "EQUIPMENT & BAKKING :",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 23.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        )))
              ])),
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " prep in\n15min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Cook in\n40min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Total in\n50min",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Makes:\n4 Servings",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Row(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 119, 82, 198),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.image),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          " Images",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 22.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        )))
              ])),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 350,
                      child: CarouselSlider(
                        items: [
                          Image.network(
                            "http://www.sanjeevkapoor.com/UploadFiles/RecipeImages/Imarti-Cooking-with-Olive-Oil.jpg",
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbup6Rs1QeRfJrmhGnPM5PWbW2nf7t19BelhDjXAbtspMYNzdXJ7ruayat5oE9HHGvqC8&usqp=CAU',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://i.pinimg.com/474x/79/7b/6f/797b6fe13d3eda46781dafd6bfc38597--rajasthani-recipes-indian-recipes.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://www.healthurwealth.com/khattameeta/Images/Product/Imarti.png',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
                          Image.network(
                            'https://thumbs.dreamstime.com/b/indian-sweet-food-imarti-white-background-indian-sweet-food-imarti-also-know-as-amriti-omriti-jahangir-jalebi-jaangiri-159072250.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                          ),
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
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          //onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
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
                          "INGREDIENTS:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 25.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
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
                          "RECEIPES:",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 9, 73, 126)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 25.6,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 9, 73, 126)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////    MINI MIRCHI BADA    /////////////////

class Mini_Mirchi_Bada extends StatefulWidget {
  const Mini_Mirchi_Bada({super.key});

  @override
  State<Mini_Mirchi_Bada> createState() => _Mini_Mirchi_BadaState();
}

class _Mini_Mirchi_BadaState extends State<Mini_Mirchi_Bada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://thenomadicguy.files.wordpress.com/2014/11/mirchi-vada-udaipur-snack.jpg',
                            ),
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
                        "MINI MIRCHI VADA",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://thumbs.dreamstime.com/b/mirchi-bada-chilli-pakora-mirchi-bada-delicious-street-food-india-105595550.jpg",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://thumbs.dreamstime.com/b/mirchi-bada-chilli-pakora-mirchi-bada-delicious-street-food-india-105596192.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.cookclickndevour.com/wp-content/uploads/2018/12/jodhpur-mirchi-bada-recipe-1.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://images1.livehindustan.com/uploadimage/library/2022/07/14/16_9/16_9_1/mirchi_vada_recipe_1657778146.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.cookclickndevour.com/wp-content/uploads/2018/12/jodhpur-mirchi-bada-recipe-1.jpg',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////     MALAI GHEVAR      ///////////////

class Malai_Ghevar extends StatefulWidget {
  const Malai_Ghevar({super.key});

  @override
  State<Malai_Ghevar> createState() => _Malai_GhevarState();
}

class _Malai_GhevarState extends State<Malai_Ghevar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://www.cookforindia.com/wp-content/uploads/2016/08/ghevar.jpg',
                            ),
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
                        "Malai Ghevar ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 119, 82, 198)),
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
                        color: Color.fromARGB(255, 47, 71, 255),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 6, 39, 67)),
                            )))
                  ])),
                  Container(
                      child: Column(children: [
                    SizedBox(
                        height: 350,
                        child: CarouselSlider(
                            items: [
                              Image.network(
                                "https://c.ndtvimg.com/2020-01/bsna8nj8_620_625x300_30_January_20.jpg",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.mapsofindia.com/ci-moi-images/my-india/Malai-Ghevar-665x490.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.whiskaffair.com/wp-content/uploads/2013/08/DSC_4399.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://static.toiimg.com/thumb/56134181.cms?imgsize=196256&width=800&height=800',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.cookingcarnival.com/wp-content/uploads/2020/07/Malai-Ghevar.jpg',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////  KERSANGRI   //////////

class Kersangri extends StatefulWidget {
  const Kersangri({super.key});

  @override
  State<Kersangri> createState() => _KersangriState();
}

class _KersangriState extends State<Kersangri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://www.whiskaffair.com/wp-content/uploads/2020/09/Ker-Sangri-2-3.jpg',
                            ),
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
                        "Kersangari ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://static.toiimg.com/thumb/61846581.cms?imgsize=916679&width=800&height=800",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://www.whiskaffair.com/wp-content/uploads/2020/09/Ker-Sangri-2-1.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://media.vogue.in/wp-content/uploads/2020/12/Kair-Sangri-2.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/a/ab/Ker_Sangri.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://i.etsystatic.com/26155169/r/il/39a548/2759136867/il_570xN.2759136867_sp9i.jpg',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////  MALPUA   //////////////

class Malpua extends StatefulWidget {
  const Malpua({super.key});

  @override
  State<Malpua> createState() => _MalpuaState();
}

class _MalpuaState extends State<Malpua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/12/malpua-recipe.jpg',
                            ),
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
                        "Malpua ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 1, 13, 107),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 119, 82, 198)),
                            )))
                  ])),
                  Container(
                      child: Column(children: [
                    SizedBox(
                        height: 350,
                        child: CarouselSlider(
                            items: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW_bpIlRnHOokWmHSOnGVozuyHc81tASWV1qa6CFTjvgX6MPseg1jHfPLqpMXwlzuBZkw&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2D3LUYiJaDzfES4Rjn5rdOmWLEupL99B-anM-4kOFuA232V32dz37a44VcUkR1Jp1cEU&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://zaykarecipes.com/eng/wp-content/uploads/2020/05/Rabdi-Malpua-Recipe.jpg',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZgEzPrT55bzq4wKNLKyib0DZ_LFijK6yqlMcSGiHOcW0wblbAeWFn4tskPCMX8DNGNWw&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQsgg5II1YyfmSviS575Pl31zMDoETppItv0XbAVsnWXB1p1ws0tJbHBoN_8YYluq_EZY&usqp=CAU',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

////////////  FALOODA  //////////////

class Falooda extends StatefulWidget {
  const Falooda({super.key});

  @override
  State<Falooda> createState() => _FaloodaState();
}

class _FaloodaState extends State<Falooda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 245, 244),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                      width: 500,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-bMkRQWluiJ1XV-ZM3c5sqpd6wRHXa2p4Mtbd9-WwZFhG37WP49VdxyepIWSoIE-vEqc&usqp=CAU',
                            ),
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
                        " Falooda ",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                            color: Color.fromARGB(255, 1, 13, 107),
                            fontWeight: FontWeight.w700),
                      )),
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
                              "EQUIPMENT & BAKKING :",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 23.6,
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
                      child: Icon(Icons.lock_clock),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " prep in\n15min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Cook in\n40min",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 22.6,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 9, 73, 126)),
                            ))),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Total in\n50min",
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
                      child: Icon(Icons.cookie),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Makes:\n4 Servings",
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
                        color: Color.fromARGB(255, 119, 82, 198),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.image),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              " Images",
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzkUghGUdgt7Xgi1Odc1fhrwpvXiCSWppJO5ohwR6_Nn6sGHaeXNVcI54imvcQmilSNqc&usqp=CAU",
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtTNUg-qcd1yiWjE4lolvJpTpj-C7K5pJzNhWpvGyRegPY4e2JSegbmQIKXPIWEbsd48&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjTuDBe0FrBlLQn_trlT1Cj9nOmvnuqnlFUvkboJZj29Ht58AOcdCNCZk9APHXs4SQ3n4&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQpfeCRgYnwh-gV9JKkULQ98zeZh7DMuS4BcHlhW9xkvkQvHcsAJO_kyEa5jljw0Hb1Po&usqp=CAU',
                                fit: BoxFit.cover,
                                height: 300,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPaapyyg1UNvwY-HP4qIoyhyV2ubX6jCetTynfrjcQUcF5LUfX4WPC2wV62mHxTHo2uRs&usqp=CAU',
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
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
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
                              "INGREDIENTS:",
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
                            "1.500 gm mutton\n2.3 tablespoon gram flour (besan)\n3. 1 teaspoon ginger paste \n4. 3 tablespoon mustard oil\n5. 1 teaspoon coriander powder\n6.1 teaspoon garlic paste\n7. 3 pieces green chilli\n8. 3 cup yoghurt (curd)\n9. 3 cup yoghurt (curd)\n10. 3 black cardamom\n11. 1/2 teaspoon asafoetida",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          ))),
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
                              "RECEIPES:",
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
                            "To prepare this enticing recipe, in a bowl take the mutton pieces, add ginger and garlic paste with crushed cloves, cinnamon, bay leaves and cardamom. To this mix add a small portion of yogurt and rub onto to meat to marinate it well. Refrigerate for at least 5 hours\nNow, over medium flame heat oil in a pan. Once heated, add to it coriander powder, asafoetida, red chilli powder, green chillies and chopped ginger. Saute the spices for 4-5 minutes. Now add in the chopped onions. Saute until onions change colour.\nOnce done, add in the gram flour and cook while stirring continuously. Ensure that the mix does not burn. Now add the marinated mutton with turmeric powder. Stir cook for a while.\nFinally, add the yoghurt and cook on a slow flame for about an hour. Adjust the seasoning and serve hot",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 25.6,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 9, 73, 126)),
                          )))
                ]))));
  }
}

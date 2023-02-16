import 'package:flutter/material.dart';
import 'package:project/Travelogue/Temple.dart';
import 'package:project/Travelogue/city_place.dart';
import 'package:project/Travelogue/lake_place.dart';
import 'package:project/Travelogue/palace.dart';

class properties {
  List palaceimages = [
    'assets/images/vintage.jpg',
    'assets/images/taj lake.jpg',
    'assets/images/sajjangarh.jpg',
    'assets/images/maharana.jpg',
    'assets/images/haldi ghaati.jpg',
    'assets/images/city.jpg',
    'assets/images/bharatiya lok kala museum.jpg',
  ];

  List lakeplaceimages = [
    'assets/images/ambrai_ghat.jpg',
    'assets/images/doodh talaji.jpg',
    'assets/images/Fateh-Sagar-Lake.jpg',
    'assets/images/jaisamand.jpg',
    'assets/images/jiyansagar.jpg',
    'assets/images/pichola.jpg',
    'assets/images/rajsamand.jpg',
    'assets/images/udaisagar.jpg',
  ];

  List cityplaceimage = [
    'assets/images/ahar.jpg',
    'assets/images/crystalgallery.jpg',
    'assets/images/gulabh bagh & zoo.jpg',
    'assets/images/jeel water park.jpg',
    'assets/images/marvel water park.png',
    'assets/images/neharu garden.jpg',
    'assets/images/rajiv gandhi park.jpeg',
    'assets/images/saheliyon ki bari.jpg',
    'assets/images/shilp gram.jpg',
    'assets/images/sukhadiya car circle.jpg',
  ];

  List templeimages = [
    "assets/images/Gupteshwar-Mahadev-Temple.jpg",
    "assets/images/jagdishtemple.jpg",
    "assets/images/jagmandir.jpg",
    "assets/images/Mahakaleshwar-Temple.jpg",
    "assets/images/Mahalaxmi-Temple.jpg",
    "assets/images/Sahastrabahu-Temple.jpg",
    "assets/images/Eklingji-Temple.jpg",
    "assets/images/Shri-Manshapurna-Karni-Mata-Temple.jpg",
    "assets/images/Bohra-Ganesh-Temple.jpg",
  ];

  List palacename = [
    "VINTAGE",
    "TAJ LAKE",
    "SAJJANGARH",
    "MAHARANA",
    "HALDI GHAATI",
    "CITY",
    "LOK MUSEUM",
  ];

  List lakeplacename = [
    "AMBRAI GHAT",
    "DOODH TALAI",
    "FATEH SAGAR",
    "JAISAMAND",
    "JIYAN SAGAR",
    "PICHOLA",
    "RAJSAMAND",
    "UDAISAGAR",
  ];

  List cityplacename = [
    "AHAR CENOTAPHA",
    "CRYSTAL GALLERY",
    "GULABH BAGH ",
    "JEEL WATER PARK",
    "MARVEL PARK",
    "NEHARU GARDEN",
    "AAJJIV GANDHI",
    "SAHELIYON BARI",
    "SHILP GRAM",
    "SUKHDIYA CIRCLE",
  ];

  List templename = [
    " GUPTESHWAR ",
    " JAGDISH",
    " JAGMANDIR",
    " MAHAKALESHWAR",
    " MAHALAXMI",
    " SAHASTRABAHU",
    " EKLINGJI",
    " MANSHAPURNA  ",
    " BOHARA GANESH"
  ];
  List palaceList = [
    Vintage(),
    Taj_Lake(),
    Sajjangarh(),
    Maharana(),
    Haldi_Ghaati(),
    City(),
    Bharatiya_Lok_Kala_Museum(),
  ];

  List lakeplacelist = [
    Ambarai_Ghat(),
    Doodh_Talaji(),
    Fateh_Sagar(),
    Jaisamand(),
    Jiyansagar(),
    Pichola(),
    Rajsamand(),
    Udaisagar(),
  ];

  List cityplacelist = [
    Ahar_Cenotapha(),
    Crystal_Gallery(),
    Gulabh_Bagh_Zoo(),
    Jeel_Water_Park(),
    Marvel_Water_Park(),
    Neharu_Garden(),
    Rajiv_Gandhi_Park(),
    Saheliyon_Ki_Bari(),
    Shilp_Gram(),
    Sukhdiya_Car_Circle(),
  ];

  List templelist = [
    Gupteshwar(),
    Jagdish(),
    Jagmandir(),
    Mahakaleshwar(),
    Mahalaxmi(),
    Sahastra_Bahu(),
    Eklingji(),
    Manshapurna(),
    Bohara_Ganesh(),
  ];
}

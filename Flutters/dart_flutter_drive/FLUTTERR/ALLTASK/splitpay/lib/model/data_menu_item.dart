import 'menu_item.dart';

class MenuItems {

  static List<Menuitems> items = [
    langEnglish,
    langArabic
  ];

  static Menuitems langEnglish = Menuitems(text: 'English', icons: 'assets/images/English.svg');
  static Menuitems langArabic = Menuitems(text: 'Arabic', icons: 'assets/images/Arabic.svg');
}
import 'package:flutter/material.dart';
import 'package:foodapp/model/bestpartner_model.dart';
import 'package:foodapp/model/foodmain_model.dart';
import 'package:foodapp/model/foodtab_model.dart';
import 'package:foodapp/model/foodtab_sales_model.dart';
import 'package:get/get.dart';
import '../../model/foodpartner_model.dart';
import '../../model/search_model.dart';

class FoodMainController extends GetxController with GetSingleTickerProviderStateMixin {
  final TextEditingController controllerForSearch = TextEditingController();
  TabController? controller;

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Nearby'),
    const Tab(text: 'Sales'),
    const Tab(text: 'Rate'),
    const Tab(text: 'Fast'),
  ];

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller!.dispose();
    super.onClose();
  }

  RxList<FoodMainModel> foodlist = [
    FoodMainModel(
        image: "assets/fb.png",
        name: "Sandwich",
    ),
    FoodMainModel(
      image: "assets/splesh.jpg",
      name: "Pizza",
    ),
    FoodMainModel(
      image: "assets/google.png",
      name: "Burger"
    ),
    FoodMainModel(
      image: "assets/fb.png",
      name: "Sandwich",
    ),
    FoodMainModel(
      image: "assets/splesh.jpg",
      name: "Pizza",
    ),
    FoodMainModel(
        image: "assets/google.png",
        name: "Burger"
    )
  ].obs;

  RxList<BestPartnerModel> bestpartnerlist = [
    BestPartnerModel(
        openclosepartener: "Open",
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: "Subway",
        ratingpartner: "4.5",
        kmpartner: "5"),
    BestPartnerModel(
        openclosepartener: "Open",
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: "Taco Bell",
        ratingpartner: "5.0",
        kmpartner: "7"),
    BestPartnerModel(
        openclosepartener: "Close",
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: "Subway",
        ratingpartner: "5.0",
        kmpartner: "2"),
    BestPartnerModel(
        openclosepartener: "Open",
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: "Taco Bell",
        ratingpartner: "3.5",
        kmpartner: "6"),
    BestPartnerModel(
        openclosepartener: "Close",
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: "Subway",
        ratingpartner: "4.0",
        kmpartner: "4"),
  ].obs;
  RxList<SearchModel> searchlist = [
    SearchModel(
        image: "assets/fb.png",
        product: "Burger King",
        usd: "vgh"
    ),
    SearchModel(
        image: "assets/splesh.jpg",
        product: "Burger King",
        usd: "2.5 USD"
    ),
    SearchModel(
        image: "assets/google.png",
        product: "Burger King",
        usd: "2.5 USD"
    ),
    SearchModel(
        image: "assets/fb.png",
        product: "Burger King",
        usd: "2.5 USD"
    ),
    SearchModel(
        image: "assets/splesh.jpg",
        product: "Burger King",
        usd: "2.5 USD"
    ),
    SearchModel(
        image: "assets/google.png",
        product: "Burger King",
        usd: "2.5 USD"
    )
  ].obs;

  RxList<FoodPartnerModel> foodpartner = [
    FoodPartnerModel(
        imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
        namepartner: 'Subway',
        addresspartner: 'Santa Nella, CA 95322',
        ratingpartner: '4.5',
        kmpartner: '45',
      openclosepartener: 'open',
    ),
    FoodPartnerModel(
      imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
      namepartner: 'Taco Bell',
      addresspartner: 'Santa Nella, CA 95322',
      ratingpartner: '3.0',
      kmpartner: '34',
      openclosepartener: 'close',
    ),
    FoodPartnerModel(
      imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
      namepartner: 'Subway',
      addresspartner: 'Santa Nella, CA 95322',
      ratingpartner: '4.0',
      kmpartner: '6',
      openclosepartener: 'close',
    ),
    FoodPartnerModel(
      imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
      namepartner: 'Taco Bell',
      addresspartner: 'Santa Nella, CA 95322',
      ratingpartner: '3.5',
      kmpartner: '8',
      openclosepartener: 'open',
    ),
    FoodPartnerModel(
      imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
      namepartner: 'Taco Bell',
      addresspartner: 'Santa Nella, CA 95322',
      ratingpartner: '5.0',
      kmpartner: '27', openclosepartener: 'open',
    ),
    FoodPartnerModel(
      imagepartner: "https://tse3.mm.bing.net/th?id=OIP.qILtE96DLrI1Z0xohjXL3wHaEK&pid=Api&P=0&h=180",
      namepartner: 'Subway',
      addresspartner: 'Santa Nella, CA 95322',
      ratingpartner: '3.5',
      kmpartner: '7',
      openclosepartener: 'open',
    ),
  ].obs;

  RxList<FoodTabModel> foodtabnearby = [
    FoodTabModel(
        product1nearby: "Burger King",
        product2nearby: "Burger",
        product3nearby: "Rice",
        product4nearby: "Spagetting",
        imagenearby: "https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180",
        addressnearby: "free shipping",
        ratingnearby: "4.8",
        kmnearby: "2.6 km",
        openclosenearby: "open"
    ),
    FoodTabModel(
        product1nearby: "KGC",
        product2nearby: "Fastfood",
        product3nearby: "Chicken",
        product4nearby: "Rice",
        imagenearby: "https://tse3.mm.bing.net/th?id=OIP.H1ElGxTplLExxgoaVTfPjAHaET&pid=Api&P=0&h=180",
        addressnearby: "free shipping",
        ratingnearby: "4.0",
        kmnearby: "3.0 km ",
        openclosenearby: "open"
    ),
  ].obs;

  RxList<FoodTabSalesModel> foodtabsales = [
    FoodTabSalesModel(
        product1nearby: "Starbucks",
        product2nearby: "Coffee",
        imagenearby: "https://tse2.mm.bing.net/th?id=OIP.7nJrWYMAkonHujM2MRSjUQHaFs&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
    FoodTabSalesModel(
        product1nearby: "Subway",
        product2nearby: "Fast Food",
        imagenearby: "https://tse3.mm.bing.net/th?id=OIP.PywDhNZ49KRxOmF3HjeKHAHaE8&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
    FoodTabSalesModel(
        product1nearby: "Burger King",
        product2nearby: "Fast Food",
        imagenearby: "https://tse4.mm.bing.net/th?id=OIP.sALR_WfsFv1WwmggILsLeQHaHe&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
    FoodTabSalesModel(
        product1nearby: "Subway",
        product2nearby: "Coffee",
        imagenearby: "https://tse2.mm.bing.net/th?id=OIP.XuLyjoSzaxGZT_DM78vz4QHaI9&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
    FoodTabSalesModel(
        product1nearby: "Burger King",
        product2nearby: "Fast Food",
        imagenearby: "https://tse3.mm.bing.net/th?id=OIP._ANwHIiUKYNuuh9oxEF-cQEsCo&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
    FoodTabSalesModel(
        product1nearby: "McDonald's",
        product2nearby: "Fast Food",
        imagenearby: "https://tse2.mm.bing.net/th?id=OIP.38KyL-qmCzjP5BG5CE6AFgHaFn&pid=Api&P=0&h=180",
        openclosenearby: "open"
    ),
  ].obs;
}
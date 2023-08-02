// ignore_for_file: file_names, non_constant_identifier_names, use_build_context_synchronously, avoid_types_as_parameter_names, unrelated_type_equality_checks
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/bottomsheet/brandbottomsheet.dart';
import 'package:new_app/bottomsheet/schoolbottomsheet.dart';
import 'package:new_app/search.dart';
import 'package:new_app/todaydeal.dart';
import 'Add_More.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'package:http/http.dart' as http;
import 'Model/data/home/allproduct_data.dart';
import 'Model/data/home/banner_list_data.dart';
import 'Model/data/home/second_banner_list_data.dart';
import 'Model/models/cartlist/addtocart_model.dart';
import 'features.dart';
import 'product_Detail_screen.dart';
import 'server_url/server_url.dart';

class HomePage extends StatefulWidget {
  final String productId;
  const HomePage({
    super.key,
    required this.productId,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AllProductListData> allproductApi = [];
  List<BannerListData> bannerApi = [];
  List<SecondBannerListData> secondbannerApi = [];
  late AddToCartModel addToCartApi;
  var is_cart;

  // add(String image, String name) {
  //   AllProductListData.allproductApi.length;
  //   notifyListeners();
  // }

  // del(int index) {
  //   allproductApi.removeAt(index);
  //   notifyListeners();
  // }

  bool _isLoading = false;
  bool isSelected = false;
  final String url = "";
  final TextEditingController controllerForSearch = TextEditingController();

  @override
  void initState() {
    _isLoading = true;
    // getFlashDealList();
    getImageList();
    getSecondImageList();
    getDataList();
    super.initState();
  }

  Future<List<AllProductListData>> getDataList() async {
    Map data = {'user_id': "3"};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}allProduct");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      allproductApi = rest
          .map<AllProductListData>((e) => AllProductListData.fromJsonMap(e))
          .toList();
      setState(() {
        _isLoading = false;
      });
      print("allproductApi");
      print(response.body);
    }
    return allproductApi;
  }

  Future<List<BannerListData>> getImageList() async {
    Map data = {};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}bannerList");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      bannerApi = rest
          .map<BannerListData>((e) => BannerListData.fromJsonMap(e))
          .toList();
      setState(() {
        _isLoading = false;
      });
      print("bannerApi");
      print(response.body);
    }
    return bannerApi;
  }

  Future<List<SecondBannerListData>> getSecondImageList() async {
    Map data = {};
    final Uri url =
        Uri.parse("${SchoolBaseUrlL.school_base_url}secondBannerList");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      secondbannerApi = rest
          .map<SecondBannerListData>((e) => SecondBannerListData.fromJsonMap(e))
          .toList();
      setState(() {
        _isLoading = false;
      });
      print("secondbannerApi");
      print(response.body);
    }
    return secondbannerApi;
  }

  AddToCart(String, BuildContext ctx) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var stringValue = prefs.getString('userId');
    print("user id||${stringValue}");
    Map data = {
      'user_id': "11",
      'product_id': "49", // widget.productId.toString(),
      'qty': "2"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}addToCart");
    var response = await http.post(url, body: data);
    addToCartApi =
        AddToCartModel.fromJsonMap(json.decode(response.body.toString()));
    if (response.statusCode == 200) {
      if (addToCartApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx)
              .showSnackBar(SnackBar(content: Text(addToCartApi.message)));
          Navigator.push(
              ctx, MaterialPageRoute(builder: ((context) => const Cart())));
        });
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    } else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Favorite(),
                  ));
            },
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: TextFormField(
                      controller: controllerForSearch,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 15),
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Search(
                                      searchText:
                                          controllerForSearch.text.toString(),
                                    )));
                      },
                      decoration: InputDecoration(
                        focusColor: Colors.grey,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Colors.grey,
                        hintText: "Search anything",
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: "verdana_regular",
                          fontWeight: FontWeight.w400,
                        ),
                        labelText: "Search anything",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: "verdana_regular",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  // CarouselSlider(
                  //   items: [
                  //     for(int i = 0; i< bannerApi.length; i++)
                  //       ListView.builder(
                  //         shrinkWrap: true,
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         itemCount: bannerApi.length,
                  //         itemBuilder: (context,index){
                  //           return Container(
                  //             height: 200,
                  //             margin: const EdgeInsets.symmetric(horizontal: 10),
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(8.0),
                  //             ),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(8),
                  //               child: Image.network(bannerApi[i].image,fit: BoxFit.fill,width: 900,),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //   ], //Slider Container properties
                  //   options: CarouselOptions(
                  //     height: 200.0,
                  //     enlargeCenterPage: false,
                  //     autoPlay: true,
                  //     aspectRatio: 16 / 9,
                  //     autoPlayCurve: Curves.fastOutSlowIn,
                  //     // enableInfiniteScroll: true,
                  //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  //     viewportFraction: 0.99,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Today_Deal(),
                            ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 6, right: 5),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAlias,
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.blue,
                              ),
                              Text(
                                "Today's Deal",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Add_More(),
                            ));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 5),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAlias,
                          elevation: 2,
                          shadowColor: Colors.grey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.flash_on,
                                color: Colors.blue,
                              ),
                              Text(
                                "Flash Deal",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  // CarouselSlider(
                  //   items: [
                  //     for(var i = 0; i< secondbannerApi.length; i++)
                  //       ListView.builder(
                  //         shrinkWrap: true,
                  //         physics: const NeverScrollableScrollPhysics(),
                  //         itemCount: secondbannerApi.length,
                  //         itemBuilder: (context,index){
                  //           return Container(
                  //             height: 200,
                  //             margin: const EdgeInsets.symmetric(horizontal: 10),
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(8.0),
                  //             ),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(8),
                  //               child: Image.network(secondbannerApi[i].image,fit: BoxFit.fill,width: 900,),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //   ], //Slider Container properties
                  //   options: CarouselOptions(
                  //     height: 200,
                  //     enlargeCenterPage: false,
                  //     autoPlay: true,
                  //     aspectRatio: 16 / 9,
                  //     autoPlayCurve: Curves.fastOutSlowIn,
                  //     enableInfiniteScroll: true,
                  //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  //     viewportFraction: 0.99,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Featured Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 4),
                    child: Row(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 7, right: 5),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return const SchoolBottomSheet();
                                });
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.school,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Select School",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Add_More(),
                                ));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.production_quantity_limits_sharp,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 7, right: 5),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return const BrandBottomSheet();
                                });
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.branding_watermark_sharp,
                                  color: Colors.blue,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 8, right: 18),
                                  child: const Text(
                                    "Brand",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.47,
                        margin: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Feature(),
                                ));
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.featured_play_list_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Feature",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 235),
                    child: const Text(
                      "All Product",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0.0),
                    itemCount: allproductApi.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailScreen(
                                        productId: allproductApi[index].id,
                                      )),
                            );
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.22,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Image.network(
                                      allproductApi[index].product_image,
                                      fit: BoxFit.fill,
                                      width: MediaQuery.of(context).size.width *
                                          0.55,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.22),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child:
                                      Text(allproductApi[index].product_name),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  child: Text(
                                    allproductApi[index].brand_name,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${allproductApi[index].discount}% Off",
                                    style: const TextStyle(
                                        color: Colors.green, fontSize: 12),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        right: 5,
                                      ),
                                      child: const Icon(
                                        Icons.currency_rupee,
                                        color: Colors.blue,
                                        size: 17,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        allproductApi[index].price,
                                        style: const TextStyle(
                                            color: Colors.blue, fontSize: 15),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '\$${allproductApi[index].discount_price}',
                                      style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.red,
                                          fontSize: 12),
                                    ),
                                    const Spacer(),
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            AddToCart(String, context);
                                          });
                                          // if(widget.productId == true){
                                          //   setState(() {
                                          //     _isLoading = true;
                                          //     widget.productId == false;
                                          //     AddToCart(widget.productId, context);
                                          //   });
                                          // }else {
                                          //   setState(() {
                                          //     widget.productId == true;
                                          //
                                          //   });
                                          // }
                                          // if(allproductApi[index].is_cart== false ) {
                                          //   setState(() {
                                          //
                                          //     allproductApi[index].is_cart == true;
                                          //   });
                                          // }else {
                                          //   setState(() {
                                          //     allproductApi[index].is_cart == false;
                                          //   });
                                          // }
                                          // if(productList[index].isAddedToCart == false){
                                          //   setState(() {
                                          //     productList[index].isAddedToCart = true;
                                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
                                          //   });
                                          // }
                                          // else{
                                          //   setState(() {
                                          //     productList[index].isAddedToCart = false;
                                          //   });
                                          // }
                                        },
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color: widget.productId == true
                                              ? Colors.blue
                                              : Colors.grey,
                                          size: 23,
                                        ),
                                        //child: const Icon(Icons.shopping_cart,color: Colors.grey,size: 23,),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
    );
  }
}

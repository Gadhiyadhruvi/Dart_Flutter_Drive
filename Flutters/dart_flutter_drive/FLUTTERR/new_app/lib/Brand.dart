// ignore_for_file: must_be_immutable, non_constant_identifier_names, unrelated_type_equality_checks

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/Model/data/home/brand_wish_product_data.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/allproduct_data.dart';
import 'Model/data/home/brand_data.dart';
import 'Model/models/cartlist/addtocart_model.dart';
import 'Model/models/cartlist/home_count_model.dart';
import 'Model/models/cartlist/remove_cart_model.dart';
import 'server_url/server_url.dart';

class Brand extends StatefulWidget {
  final int brandId;

  const Brand({
    Key? key,
    required this.brandId,
  }) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  int selectedIndex = 0;
  bool _isLoading = false;
  List<AllProductListData> allproductApi = [];
  List<BrandWishProductListData> brandWishProductListApi = [];
  List<BrandListData> brandApi = [];
  HomeCountModel? homeCountApi;
  late AddToCartModel addToCartApi;
  late RemoveToCartModel removeToCartApi;

  @override
  void initState() {
    _isLoading = true;
    getBrandList();
    HomeCount();
    super.initState();
  }

  Future<List<BrandListData>> getBrandList() async {
    Map data = {};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}brands");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      brandApi =
          rest.map<BrandListData>((e) => BrandListData.fromJsonMap(e)).toList();
      setState(() {});
      for (var i = 0; i < brandApi.length; i++) {
        if (widget.brandId == brandApi[i].id) {
          setState(() {
            brandApi[i].isSelected = true;
          });
        }
      }
      getBrandWishList();
      print("brandApi");
      print(response.body);
    }
    return brandApi;
  }

  Future<void> HomeCount() async {
    Map data = {
      'user_id': "3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}homeCount");
    var response = await http.post(url, body: data);
    homeCountApi =
        HomeCountModel.fromJsonMap(json.decode(response.body.toString()));
    if (response.statusCode == 200) {
      if (homeCountApi!.status == 200) {
        setState(() {
          _isLoading = false;
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

  Future<void> AddToCart(String productId, BuildContext ctx) async {
    Map data = {'user_id': "3", 'product_id': productId, 'qty': ""};
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

  Future<void> RemoveCart(String productId, BuildContext ctx) async {
    Map data = {
      'user_id': "3",
      'product_id': productId,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}removeCart");
    var response = await http.post(url, body: data);
    removeToCartApi =
        RemoveToCartModel.fromJsonMap(json.decode(response.body.toString()));
    if (response.statusCode == 200) {
      if (removeToCartApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx)
              .showSnackBar(SnackBar(content: Text(removeToCartApi.message)));
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

  Future<List<BrandWishProductListData>> getBrandWishList() async {
    String multipleBrandId = "";
    for(var i = 0; i< brandApi.length; i++){
      if(brandApi[i].isSelected == true){
        if(multipleBrandId.isNotEmpty){
          multipleBrandId += ',';
        }
        multipleBrandId += brandApi[i].id.toString();
      }
    }
    Map data = {
      'brand_id': multipleBrandId.isNotEmpty ? multipleBrandId : "0",
      'user_id': "3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}brandWiseProduct");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      brandWishProductListApi = rest.map<BrandWishProductListData>((e) => BrandWishProductListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("brandWishProductListApi");
      print(response.body);
    }
    return brandWishProductListApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brand"),
        actions: <Widget>[
          Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Favorite(),
                        ));
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 17, right: 6),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  left: 13,
                  top: 2,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Text("${homeCountApi?.homeCountData.favoriteCount}"),
                  ))
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cart(),
                        ));
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 17, right: 14),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
              ),
              Positioned(
                  left: 17,
                  top: 2,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Text("${homeCountApi?.homeCountData.cartCount}"),
                  ))
            ],
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandApi.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                      onTap: () {
                        if (brandApi[index].isSelected == true) {
                          setState(() {
                            brandApi[index].isSelected = false;
                            getBrandWishList();
                          });
                        } else {
                          setState(() {
                            brandApi[index].isSelected = true;
                            getBrandWishList();
                          });
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Colors.blue.shade700),
                              right: BorderSide(color: Colors.blue.shade700),
                              top: BorderSide(color: Colors.blue.shade700),
                              bottom: BorderSide(color: Colors.blue.shade700)),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text(
                            brandApi[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              color: brandApi[index].isSelected == true
                                  ? Colors.blue
                                  : Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      )),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.64,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              shrinkWrap: true,
              padding: const EdgeInsets.all(0.0),
              itemCount: brandWishProductListApi.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(
                                productId:
                                    brandWishProductListApi[index].id)),
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
                            height: MediaQuery.of(context).size.height * 0.22,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Image.network(
                                brandWishProductListApi[index].product_image,
                                fit: BoxFit.fill,
                                width:
                                    MediaQuery.of(context).size.width * 0.55,
                                height: MediaQuery.of(context).size.height *
                                    0.22),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(
                                brandWishProductListApi[index].product_name),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Text(
                              brandWishProductListApi[index].brand_name,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(
                              "${brandWishProductListApi[index].discount}% Off",
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
                                  brandWishProductListApi[index].price,
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 15),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                '\$${brandWishProductListApi[index].discount_price}',
                                style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red,
                                    fontSize: 12),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: InkWell(
                                  onTap: () {
                                    if (brandWishProductListApi[index].is_cart == "0") {
                                      setState(() {
                                        AddToCart(brandWishProductListApi[index].id.toString(), context).then((value) {
                                          setState(() {
                                            HomeCount();
                                            getBrandWishList();
                                          });
                                        });
                                      });
                                    } else {
                                      setState(() {
                                        RemoveCart(brandWishProductListApi[index].id.toString(), context)
                                            .then((value) {
                                          setState(() {
                                            HomeCount();
                                            getBrandWishList();
                                          });
                                        });
                                      });
                                    }
                                  },
                                  child: Icon(Icons.shopping_cart,
                                      color: brandWishProductListApi[index]
                                                  .is_cart ==
                                              "1"
                                          ? Colors.blue
                                          : Colors.grey),
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
          )
        ],
      ),
    );
  }
}

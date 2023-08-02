// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Checkout.dart';
import 'Favorite.dart';

import 'Model/models/cartlist/addCartMOdel.dart';
import 'Model/models/cartlist/addtocart_model.dart';
import 'Model/models/cartlist/cart_list2_model.dart';
import 'server_url/server_url.dart';
import 'package:http/http.dart' as http;

class Cart extends StatefulWidget {
  // final String productId;
  // final String product_image;
  // final String product_name;
  // final String brand_name;
  // final String price;
  const Cart({
    Key? key,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  AddToCartModel? addToCartApi;
  List<AddCartModel> listModel = [];
  List<ProductListModel> cartApi = [];
  bool _isLoading = false;
  int i = 1;

  @override
  void initState() {
    getCartList();
    _isLoading = true;
    AddToCart().whenComplete(() {
      print("APi called Succefuly ");
    });
    super.initState();
  }

  Future<List<ProductListModel>> getCartList() async {
    Map data = {'user_id': "11", 'page_size': "10", 'page_number': "1"};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}wishList");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data['data'] as List;
      cartApi = rest
          .map<ProductListModel>((e) => ProductListModel.fromJsonMap(e))
          .toList();
      setState(() {
        _isLoading = false;
      });
      print("cartApi");
      print(response.body);
    }
    return cartApi;
  }

  Future<AddCartModel?> AddToCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var stringValue = prefs.getString('userId');
    Map data = {'user_id': "11", 'product_id': "45", 'qty': "3"};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}addToCart");
    var response = await http.post(url, body: data);
    print("CHECLK DATA || ${response.body}");
    if (response.statusCode == 200) {
      if (addToCartApi?.status == 200) {
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
    return AddCartModel.fromJson(jsonDecode(response.body));
  }

  removeData(index) {
    setState(() {
      cartApi.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => const Add_More(),));
              },
              child: const Text(
                "Add More",
                textAlign: TextAlign.center,
              ),
            )),
            Expanded(
                child: MaterialButton(
              height: 50,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Checkout(),
                    ));
              },
              color: const Color.fromARGB(255, 29, 98, 228),
              child: const Text(
                "Checkout",
                style: TextStyle(color: Colors.white),
              ),
            ))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(children: [
                ListView.builder(
                  itemCount: cartApi.length,
                  padding: const EdgeInsets.only(bottom: 10),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(
                                    productId: cartApi[index].id,
                                  )),
                        );
                      },
                      child: Dismissible(
                          key: ValueKey(index),
                          onDismissed: (direction) {
                            if (direction == DismissDirection.startToEnd) {
                              print("Remove");
                            } else {
                              print("Favorites");
                            }
                            setState(() {
                              removeData(index);
                            });
                          },
                          confirmDismiss: (direction) {
                            return showModalBottomSheet(
                                isScrollControlled: false,
                                elevation: 15,
                                context: context,
                                builder: (contaxt) {
                                  return SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.28,
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(12),
                                                  child: Image(
                                                      image: NetworkImage(
                                                          cartApi[index]
                                                              .productListData
                                                              .product_image),
                                                      fit: BoxFit.fill,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.25,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.18),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 20),
                                                            child: Text(
                                                              cartApi[index]
                                                                  .productListData
                                                                  .product_name,
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          18),
                                                            )),
                                                      ],
                                                    ),
                                                    const Text(
                                                        "Are you sure you want to move this"),
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(bottom: 70),
                                                        child: const Text(
                                                            "item from bag?"))
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 30),
                                                      child: const Text(
                                                        "MOVE",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Favorite(),
                                                            ));
                                                      });
                                                    },
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 30),
                                                      child: const Text(
                                                        "MOVE TO WISHLIST ",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                  ),
                                                ])
                                          ],
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 10,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 20),
                                                child: const Icon(Icons.close)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          direction: DismissDirection.startToEnd,
                          background: Container(
                              margin: const EdgeInsets.all(12),
                              padding: const EdgeInsets.all(24),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(16)),
                              child: const Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 30,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Stack(
                                clipBehavior: Clip.none,
                                fit: StackFit.passthrough,
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.16,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.26,
                                          child: Image(
                                            image: NetworkImage(cartApi[index]
                                                .productListData
                                                .product_image),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin:
                                                const EdgeInsets.only(top: 4),
                                            child: Text(
                                              cartApi[index]
                                                  .productListData
                                                  .product_name,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          cartApi[index]
                                              .productListData
                                              .brand_name,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.currency_rupee_outlined,
                                                size: 15),
                                            Text(
                                              cartApi[index]
                                                  .productListData
                                                  .price,
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.22,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Colors.blue),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      i = max(i - 1, 1);
                                                    });
                                                    setState(() {
                                                      int.parse(i.toString()) >
                                                              1
                                                          ? Icons.delete_outline
                                                          : showModalBottomSheet(
                                                              isScrollControlled:
                                                                  false,
                                                              elevation: 15,
                                                              context: context,
                                                              builder:
                                                                  (contaxt) {
                                                                return SizedBox(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.28,
                                                                  child: Stack(
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets.all(12),
                                                                                child: Image(image: NetworkImage(cartApi[index].productListData.product_image), fit: BoxFit.cover, width: MediaQuery.of(context).size.width * 0.25, height: MediaQuery.of(context).size.height * 0.18),
                                                                              ),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Container(
                                                                                          margin: const EdgeInsets.only(bottom: 20),
                                                                                          child: Text(
                                                                                            cartApi[index].productListData.product_name,
                                                                                            style: const TextStyle(fontSize: 18),
                                                                                          )),
                                                                                    ],
                                                                                  ),
                                                                                  const Text("Are you sure you want to move this"),
                                                                                  Container(margin: const EdgeInsets.only(bottom: 70), child: const Text("item from bag?"))
                                                                                ],
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                InkWell(
                                                                                  onTap: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: Container(
                                                                                    margin: const EdgeInsets.only(top: 30),
                                                                                    child: const Text(
                                                                                      "MOVE",
                                                                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
                                                                                    ),
                                                                                  ),
                                                                                ),
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
                                                                                    margin: const EdgeInsets.only(top: 30),
                                                                                    child: const Text(
                                                                                      "MOVE TO WISHLIST ",
                                                                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blue),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ])
                                                                        ],
                                                                      ),
                                                                      Positioned(
                                                                        right:
                                                                            10,
                                                                        top: 10,
                                                                        child:
                                                                            InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child: Container(
                                                                              margin: const EdgeInsets.only(bottom: 20),
                                                                              child: const Icon(Icons.close)),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              });
                                                    });
                                                  },
                                                  child: Icon(
                                                    int.parse(i.toString()) > 1
                                                        ? Icons.remove
                                                        : Icons.delete_outline,
                                                    color: Colors.white,
                                                    size: 22,
                                                  )),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 4),
                                                  width: 30,
                                                  alignment: Alignment.center,
                                                  color: Colors.white,
                                                  child: Text("$i",
                                                      textScaleFactor: 1.40)),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    i++;
                                                  });
                                                },
                                                child: const Text(
                                                  "+",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            isScrollControlled: false,
                                            elevation: 15,
                                            context: context,
                                            builder: (contaxt) {
                                              return SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.28,
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(12),
                                                              child: Image(
                                                                  image: NetworkImage(cartApi[
                                                                          index]
                                                                      .productListData
                                                                      .product_image),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.25,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.18),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                        margin: const EdgeInsets.only(
                                                                            bottom:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          cartApi[index]
                                                                              .productListData
                                                                              .product_name,
                                                                          style:
                                                                              const TextStyle(fontSize: 18),
                                                                        )),
                                                                  ],
                                                                ),
                                                                const Text(
                                                                    "Are you sure you want to move this"),
                                                                Container(
                                                                    margin: const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            70),
                                                                    child: const Text(
                                                                        "item from bag?"))
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    Container(
                                                                  margin: const EdgeInsets
                                                                          .only(
                                                                      top: 30),
                                                                  child:
                                                                      const Text(
                                                                    "MOVE",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              const Favorite(),
                                                                        ));
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  margin: const EdgeInsets
                                                                          .only(
                                                                      top: 30),
                                                                  child:
                                                                      const Text(
                                                                    "MOVE TO WISHLIST ",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .blue),
                                                                  ),
                                                                ),
                                                              ),
                                                            ])
                                                      ],
                                                    ),
                                                    Positioned(
                                                      right: 10,
                                                      top: 10,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 20),
                                                            child: const Icon(
                                                                Icons.close)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    );
                  },
                ),
                const InkWell(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "View All Products",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Coupons and Discounts",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.60,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xFFF5F6F9)),
                              child: TextFormField(
                                cursorColor: Colors.grey[600],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Apply the coupon code here",
                                ),
                              )),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue),
                          child: const Text(
                            "Apply",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Payment Summary",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  height: MediaQuery.of(context).size.height / 2.90,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    color: Colors.grey[150],
                    semanticContainer: true,
                    elevation: 0,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Text("Total MRP",
                                  style: TextStyle(fontSize: 15)),
                              Container(
                                  margin: const EdgeInsets.only(left: 200),
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    size: 18,
                                  )),
                              const Text("424", style: TextStyle(fontSize: 15))
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              const Text(
                                "Discount on MRP",
                                style: TextStyle(fontSize: 15),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 160),
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 30),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 1),
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    size: 18,
                                    color: Colors.green,
                                  )),
                              const Text(
                                "0",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              const Text("Coupon Discount",
                                  style: TextStyle(fontSize: 15)),
                              Container(
                                  margin: const EdgeInsets.only(left: 160),
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 30),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 1),
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    size: 18,
                                    color: Colors.green,
                                  )),
                              const Text(
                                "0",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              const Text(" Order Total",
                                  style: TextStyle(fontSize: 15)),
                              Container(
                                  margin: const EdgeInsets.only(left: 190),
                                  child: const Icon(
                                    Icons.currency_rupee,
                                    size: 18,
                                  )),
                              const Text("424", style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
    );
  }
}

class ProductList {
  final String image;
  final String title;
  final String BrandName;
  final String price;
  final String discountPrice;
  final String discount;
  final String school;
  final String boardName;
  final String mediumName;
  final String standardName;
  final String subjectName;

  bool isAddedToCart = false;

  ProductList(
      {required this.image,
      required this.title,
      required this.BrandName,
      required this.price,
      required this.discountPrice,
      required this.discount,
      required this.school,
      required this.boardName,
      required this.mediumName,
      required this.standardName,
      required this.subjectName});
}

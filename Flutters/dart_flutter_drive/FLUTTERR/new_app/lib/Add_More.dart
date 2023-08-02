// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/allproduct_data.dart';
import 'Model/models/cartlist/addtocart_model.dart';
import 'Model/models/cartlist/home_count_model.dart';
import 'Model/models/cartlist/remove_cart_model.dart';
import 'product_Detail_screen.dart';
import 'server_url/server_url.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  State<AllProduct> createState() => _AllProductState();

}

class _AllProductState extends State<AllProduct> {
  List<AllProductListData> allproductApi = [];
  late AddToCartModel addToCartApi;
  late RemoveToCartModel removeToCartApi;
  HomeCountModel? homeCountApi;
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getDataList();
    HomeCount();
    super.initState();
  }

  Future<List<AllProductListData>> getDataList() async {
    Map data = {
      'user_id':"3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}allProduct");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      allproductApi = rest.map<AllProductListData>((e) => AllProductListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("allproductApi");
      print(response.body);
    }
    return allproductApi;
  }

  Future<void> AddToCart(String productId, BuildContext ctx) async{
    Map data = {
      'user_id' : "3",
      'product_id' : productId,
      'qty' : ""
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}addToCart");
    var response = await http.post(url,body: data);
    addToCartApi = AddToCartModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(addToCartApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(addToCartApi.message)));
        });
      }else {
        setState(() {
          _isLoading = false;
        });
      }
    }else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  Future<void> RemoveCart(String productId, BuildContext ctx) async {
    Map data = {
      'user_id' : "3",
      'product_id' : productId,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}removeCart");
    var response = await http.post(url,body: data);
    removeToCartApi = RemoveToCartModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(removeToCartApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(removeToCartApi.message)));
        });
      }else {
        setState(() {
          _isLoading = false;
        });
      }
    }else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  Future<void> HomeCount() async {
    Map data = {
      'user_id': "3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}homeCount");
    var response = await http.post(url,body: data);
    homeCountApi = HomeCountModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(homeCountApi!.status == 200) {
        setState(() {
          _isLoading = false;
        });
      }else {
        setState(() {
          _isLoading = false;
        });
      }
    }else {
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
      appBar: AppBar(title: const Text("All Product"),
        actions:<Widget>[
          Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 17,right: 6),
                  child: const Icon(Icons.favorite,color: Colors.white,),
                ),
              ),
              Positioned(
                  left: 13,
                  top: 2,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Text("${homeCountApi?.homeCountData.favoriteCount}"),
                  ))
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children:  [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 17,right: 14),
                    child: const Icon(Icons.shopping_cart,color: Colors.white,)),
              ),
              Positioned(
                  left: 17,
                  top: 2,
                  child:Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Text(
                        "${homeCountApi?.homeCountData.cartCount}"
                    ),
                  ))
            ],
          )
        ],
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.66,
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
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: allproductApi[index].id,)),
                ).then((value) {
                  setState(() {
                    HomeCount();
                  });
                });
              },
              child:
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAlias,
                elevation: 2,
                shadowColor: Colors.black,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.22,
                      width: MediaQuery.of(context).size.width*0.45,
                      child: Image.network(allproductApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                    ),
                    const SizedBox(height: 6,),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(allproductApi[index].product_name),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5,),
                      child: Text(allproductApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text("${allproductApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5,),
                          child: const Icon(Icons.currency_rupee,color: Colors.blue,size: 17,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Text(allproductApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text('\$${allproductApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: InkWell(
                            onTap: (){
                              if(allproductApi[index].is_cart == "0") {
                                setState(() {
                                  AddToCart(allproductApi[index].id.toString(), context).then((value){
                                    setState(() {
                                      getDataList();
                                      HomeCount();
                                    });
                                  });
                                });
                              }
                              else {
                                setState(() {
                                  RemoveCart(allproductApi[index].id.toString(), context).then((value){
                                    setState(() {
                                      getDataList();
                                      HomeCount();
                                    });
                                  });
                                });
                              }
                            },
                            child: Icon(
                                Icons.shopping_cart, color: allproductApi[index].is_cart == "1" ? Colors.blue : Colors.grey
                            ),
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
    );
  }
}

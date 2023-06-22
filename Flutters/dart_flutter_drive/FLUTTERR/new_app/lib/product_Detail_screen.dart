// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/Model/data/home/product_detail_data.dart';
import 'package:new_app/Model/models/home/product_detail_model.dart';
import 'package:new_app/Model/models/wishlist/save_wishlist_model.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/models/cartlist/addtocart_model.dart';
import 'Model/models/cartlist/remove_cart_model.dart';
import 'Model/models/wishlist/remove_wishlist_model.dart';
import 'server_url/server_url.dart';

class ProductDetailScreen extends StatefulWidget {
  final int productId;
  const ProductDetailScreen({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  List<TopSellingProductListData> topSellingProductListApi = [];
  late ProductDetailModel productDetailModel;
  late SaveWishListModel saveWishListApi;
  late RemoveWishListModel removeWishListApi;
  late AddToCartModel addToCartApi;
  late RemoveToCartModel removeToCartApi;
  int i = 1;
  bool Isview = false;
  bool _isLoading = false;
  final String url = "";
  bool isClick = false;

  @override
  void initState() {
    _isLoading = true;
    getDataDetailData();
     super.initState();
  }

  Future<void> getDataDetailData() async{
    Map data = {
      'user_id':"3",
      'product_id': widget.productId.toString(),
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}productDetail");
    var response = await http.post(url,body: data);
    productDetailModel = ProductDetailModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200){
      if(productDetailModel.status == 200){
        setState(() {
          _isLoading = true;
          getTopSellingProductDataList();
          print(response.body);
          print("response");
        });
      } else{
        setState(() {
          _isLoading = false;
        });
      }
    }else{
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<List<TopSellingProductListData>> getTopSellingProductDataList() async {
    Map data = {
      'user_id':"11",
      'product_id': widget.productId.toString(),
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}allProduct");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      topSellingProductListApi = rest.map<TopSellingProductListData>((e) => TopSellingProductListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("topSellingProductListApi");
      print(response.body);
    }
    return topSellingProductListApi;
  }

  Future<void> SaveWishList(String productId, BuildContext ctx) async{
    Map data = {
      'user_id' : "3",
      'product_id' : productId,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}saveWish");
    var response = await http.post(url,body: data);
    saveWishListApi = SaveWishListModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(saveWishListApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(saveWishListApi.message)));
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

  Future<void> RemoveWishList(String wishListId, BuildContext ctx) async {
    Map data = {
      'wishlist_id' : wishListId,
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}removeWish");
    var response = await http.post(url,body: data);
    removeWishListApi = RemoveWishListModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(removeWishListApi.status == 200) {
        setState(() {
          _isLoading = false;
          ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(removeWishListApi.message)));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            const Expanded(
                child: Text(
                  "Add to Cart",
                  textAlign: TextAlign.center,
                )),
            Expanded(
                child: MaterialButton(
                  height: 50,
                  onPressed: () {},
                  color: const Color.fromARGB(255, 29, 98, 228),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Details",
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
              },
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 300,
          //     scrollDirection: Axis.horizontal,
          //   ),
          //   items: [1, 2, 3].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return  Image(
          //           image: NetworkImage(
          //               widget.images),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
          // GFCarousel(
          //   initialPage: 1,
          //   hasPagination: true,
          //   height: 300,
          //pagination: true,
          //         autoPlay: true,
          //   aspectRatio: 1.5,
          //   viewportFraction: 1.0,
          //   items: [
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                height: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.network(productDetailModel.productDetailData.productDetailInnerData.product_image?? "")),
              ),
          //     Container(
          //       margin: EdgeInsets.only(left: 10,right: 10),
          //       height: 300,
          //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          //       child: ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Image.network(productDetailModel.productDetailData.productDetailInnerData.product_image ?? '')),
          //     )
          //   ],
          // ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 15, top: 16),
                      child:  Text(productDetailModel.productDetailData.productDetailInnerData.product_name,style: const TextStyle(fontWeight: FontWeight.w300))),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Text("Books",
                          style: TextStyle(fontWeight: FontWeight.w300))),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.currency_rupee,
                            color: Colors.blue,
                          )),
                      Text(
                        productDetailModel.productDetailData.productDetailInnerData.price,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.w300),
                      ),
                      const Icon(
                        Icons.currency_rupee_outlined,
                        color: Colors.red,
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 8),
                          child:  Text(
                            productDetailModel.productDetailData.productDetailInnerData.discount_price,
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          )),
                      Text(
                        "${productDetailModel.productDetailData.productDetailInnerData.discount}% Off",
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text(
                        "School : ${productDetailModel.productDetailData.productDetailInnerData.school_name}",
                        style: const TextStyle(fontWeight: FontWeight.w300),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("Board  : ${productDetailModel.productDetailData.productDetailInnerData.board_name}",
                          style: const TextStyle(fontWeight: FontWeight.w300))),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("Medium : ${productDetailModel.productDetailData.productDetailInnerData.medium_name}",
                          style: const TextStyle(fontWeight: FontWeight.w300))),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Text("Standared : ${productDetailModel.productDetailData.productDetailInnerData.standard_name}",
                          style: const TextStyle(fontWeight: FontWeight.w300))),
                  Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.15,
                      margin: const EdgeInsets.only(left: 340),
                      decoration: BoxDecoration(
                          color: isClick == false
                              ? Colors.white
                              : const Color.fromRGBO(239, 157, 185, 100),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),),
                      child: IconButton(
                          onPressed: () {
                            if(productDetailModel.productDetailData.productDetailInnerData.is_favorite == "0") {
                                SaveWishList(productDetailModel.productDetailData.productDetailInnerData.id.toString(), context).then((value){
                                  setState(() {
                                   getDataDetailData();
                                    getTopSellingProductDataList();
                                  });
                                });
                            }else {
                                  RemoveWishList(productDetailModel.productDetailData.productDetailInnerData.wishlist_id.toString(), context).then((value){
                                    setState(() {
                                     getDataDetailData();
                                      getTopSellingProductDataList();
                                    });
                                  });
                            }
                          },
                          icon: Icon(
                            productDetailModel.productDetailData.productDetailInnerData.is_favorite == '1'
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red
                              ))),
                  Container(
                      margin: const EdgeInsets.only(left: 15),
                      child:  Text("This is TextBook of ${productDetailModel.productDetailData.productDetailInnerData.standard_name} ",
                          style: const TextStyle(fontWeight: FontWeight.w300))),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: const InkWell(
                          child: Text(
                            "See More Details",
                            style: TextStyle(
                                color: Colors.blue, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.08,
                      margin: const EdgeInsets.only(left: 10,bottom: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F6F9),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            heroTag: '1',
                            mini: true,
                            onPressed: () {
                              setState(() {
                                i = max(i - 1, 1);
                              });
                            },
                            elevation: 0,
                            child: Container(
                                alignment: Alignment.center,
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.remove,color: Colors.white),
                                )
                            ),
                          ),
                          Text("$i", textScaleFactor: 2),
                          FloatingActionButton.small(
                            heroTag: '2',
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            },
                            elevation: 0,
                            child: const Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      )),
                ]),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(("Similar Products")),
              GestureDetector(
                child: Container(
                    margin: const EdgeInsets.only(left: 138),
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
              const Icon(Icons.arrow_forward_rounded)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child:GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.63,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: topSellingProductListApi.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: topSellingProductListApi[index].id,)),
                      );
                    },
                    child:
                    Card(
                      elevation: 2,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            //height: MediaQuery.of(context).size.height*0.20,
                            child: Image.network(topSellingProductListApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                          ),
                          const SizedBox(height: 6,),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(topSellingProductListApi[index].product_name),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5,),
                            child: Text(topSellingProductListApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text("${topSellingProductListApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
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
                                child: Text(topSellingProductListApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text('\$${topSellingProductListApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: InkWell(
                                  onTap: (){
                                    if(topSellingProductListApi[index].is_cart == "0") {
                                      setState(() {
                                        AddToCart(topSellingProductListApi[index].id.toString(), context).then((value){
                                          setState(() {
                                            getTopSellingProductDataList();
                                          });
                                        });
                                      });
                                    }
                                    else {
                                      setState(() {
                                        RemoveCart(topSellingProductListApi[index].id.toString(), context).then((value){
                                          setState(() {
                                            getTopSellingProductDataList();
                                          });
                                        });
                                      });
                                    }
                                  },
                                  child: Icon(
                                      Icons.shopping_cart, color: topSellingProductListApi[index].is_cart == "1" ? Colors.blue : Colors.grey
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
          ),
        ]),
      ),
    );
  }
}
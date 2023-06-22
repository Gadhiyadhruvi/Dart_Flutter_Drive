// ignore_for_file: camel_case_types, avoid_print, non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/category_wish_product_list_data.dart';
import 'Model/models/cartlist/home_count_model.dart';
import 'server_url/server_url.dart';

class CategoryWise extends StatefulWidget {
  final int schoolId;
  final int boardId;
  final int mediumId;
  final int standardId;
  const CategoryWise({Key? key, required this.schoolId, required this.boardId, required this.mediumId, required this.standardId}) : super(key: key);

  @override
  State<CategoryWise> createState() => _CategoryWiseState();
}

class _CategoryWiseState extends State<CategoryWise> {
  bool _isLoading = false;
  final String url = "";
  HomeCountModel? homeCountApi;
  List<CategoryWishProductListData> categoryWishProductListApi = [];

  @override
  void initState() {
    _isLoading = true;
    getCategoryWishProductList();
    HomeCount();
    super.initState();
  }

  Future<List<CategoryWishProductListData>> getCategoryWishProductList() async {
    Map data = {
      'school_id': widget.schoolId.toString(),
      'board_id': widget.boardId.toString(),
      'medium_id': widget.mediumId.toString(),
      'standard_id': widget.standardId.toString(),
      'user_id':"3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}categoryWiseProduct");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      categoryWishProductListApi = rest.map<CategoryWishProductListData>((e) => CategoryWishProductListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("categoryWishProductListApi");
      print(response.body);
    }
    return categoryWishProductListApi;
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
        appBar: AppBar(
          title: const Text("Products"),
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
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0.0),
            itemCount: categoryWishProductListApi.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: categoryWishProductListApi[index].id,)),
                    );
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
                          child: Image.network(categoryWishProductListApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                        ),
                        const SizedBox(height: 6,),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(categoryWishProductListApi[index].product_name),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5,),
                          child: Text(categoryWishProductListApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text("${categoryWishProductListApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
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
                              child: Text(categoryWishProductListApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text('\$${categoryWishProductListApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: InkWell(
                                onTap: (){

                                },
                                // child: Icon(Icons.shopping_cart,color: productList[index].isAddedToCart == true? Colors.blue : Colors.grey,size: 23,),
                                child: const Icon(Icons.shopping_cart,color: Colors.grey,size: 23,),
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
    );
  }
}
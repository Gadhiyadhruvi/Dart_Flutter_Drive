// ignore_for_file: camel_case_types

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/TodaysDeal_data.dart';
import 'server_url/server_url.dart';

class Today_Deal extends StatefulWidget {
  const Today_Deal({Key? key}) : super(key: key);

  @override
  State<Today_Deal> createState() => _Today_DealState();
}

class _Today_DealState extends State<Today_Deal> {
  bool _isLoading = false;
  final String url = "";
  List<TodaysDealListData> todaydealApi = [];

  @override
  void initState() {
    _isLoading = true;
    getTodayList();
    super.initState();
  }

  Future<List<TodaysDealListData>> getTodayList() async {
    Map data = {};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}todaysDeal");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      todaydealApi = rest.map<TodaysDealListData>((e) => TodaysDealListData.fromJsonMap(e)).toList();
      setState(() {});
      print("todaydealApi");
      print(response.body);
    }
    return todaydealApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
          actions:<Widget>[
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
              },
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
            }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
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
            itemCount: todaydealApi.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: todaydealApi[index].id,)),
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
                          child: Image.network(todaydealApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                        ),
                        const SizedBox(height: 6,),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(todaydealApi[index].product_name),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5,),
                          child: Text(todaydealApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text("${todaydealApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
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
                              child: Text(todaydealApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text('\$${todaydealApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: InkWell(
                                onTap: (){
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
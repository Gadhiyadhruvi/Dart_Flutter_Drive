import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/flash_deal_list_data.dart';
import 'server_url/server_url.dart';
import 'dart:convert';

class FlashDeal extends StatefulWidget {
  const FlashDeal({Key? key}) : super(key: key);

  @override
  State<FlashDeal> createState() => _FlashDealState();
}

class _FlashDealState extends State<FlashDeal> {
  List<FlashDealListData> flashDealApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getFlashDealDataList();
    super.initState();
  }

  Future<List<FlashDealListData>> getFlashDealDataList() async {
    Map data = {
      'user_id':"3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}flashDeal");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      flashDealApi = rest.map<FlashDealListData>((e) => FlashDealListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("flashDealApi");
      print(response.body);
    }
    return flashDealApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flash Deal"),
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
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.64,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0.0),
          itemCount: flashDealApi.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: flashDealApi[index].id,)),
                  ).then((value) {
                    setState(() {
                      // HomeCount();
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
                        child: Image.network(flashDealApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                      ),
                      const SizedBox(height: 6,),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(flashDealApi[index].product_name),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5,),
                        child: Text(flashDealApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text("${flashDealApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
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
                            child: Text(flashDealApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text('\$${flashDealApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: InkWell(
                              onTap: (){
                                if(flashDealApi[index].is_cart == "0") {
                                  setState(() {
                                    // AddToCart(allproductApi[index].id.toString(), context).then((value){
                                    //   setState(() {
                                    //     getDataList();
                                    //     HomeCount();
                                    //   });
                                    // });
                                  });
                                }
                                else {
                                  setState(() {
                                    // RemoveCart(allproductApi[index].id.toString(), context).then((value){
                                    //   setState(() {
                                    //     getDataList();
                                    //     HomeCount();
                                    //   });
                                    // });
                                  });
                                }
                              },
                              child: Icon(
                                  Icons.shopping_cart, color: flashDealApi[index].is_cart == "1" ? Colors.blue : Colors.grey
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
        // GridView.builder(
        //   padding: const EdgeInsets.only(bottom: 10),
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemCount: flashDealApi.length,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 4,
        //     crossAxisSpacing: 2,
        //     childAspectRatio: 0.75,
        //   ),
        //   itemBuilder: (context, index) {
        //     return InkWell(
        //       onTap: (){
        //         Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProductDetailScreen(productId: flashDealApi[index].id),));
        //       },
        //       child: Container(
        //           decoration: BoxDecoration(
        //             boxShadow:  [
        //               const BoxShadow(
        //                 color: Colors.black12,blurStyle: BlurStyle.outer,
        //                 blurRadius: 3,
        //                 spreadRadius: 0,
        //                 offset: Offset(0, 0),
        //               ),
        //               BoxShadow(
        //                 color: Colors.grey.shade300,
        //                 blurStyle: BlurStyle.outer,
        //                 blurRadius: 3.5,
        //                 spreadRadius: 0,
        //                 offset: const Offset(0, 0),
        //               ),
        //             ],
        //             borderRadius: BorderRadius.circular(20),
        //             color: Colors.white,
        //           ),
        //           margin: const EdgeInsets.only(left: 10,right: 10,top: 7.5,bottom: 7.5),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 margin: const EdgeInsets.only(bottom: 5),
        //                 width: MediaQuery.of(context).size.width,
        //                 height: MediaQuery.of(context).size.height * 0.17,
        //                 decoration: const BoxDecoration(
        //                   borderRadius: BorderRadius.only(
        //                       topRight: Radius.circular(10),
        //                       topLeft: Radius.circular(10)),
        //                 ),
        //                 child: ClipRRect(
        //                   borderRadius: const BorderRadius.only(
        //                       topRight: Radius.circular(10),
        //                       topLeft: Radius.circular(10)),
        //                   child: Image.network(
        //                     flashDealApi[index].product_image,
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 width: MediaQuery.of(context).size.width,
        //                 margin: const EdgeInsets.only(
        //                     top: 10, left: 8, right: 8, bottom: 5),
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       flashDealApi[index].product_name,
        //                       maxLines: 1,
        //                       overflow: TextOverflow.ellipsis,
        //                       style: const TextStyle(color: Colors.black,height: 2),
        //                     ),
        //                     Text(
        //                       flashDealApi[index].brand_name,
        //                       style: const TextStyle(
        //                           color: Colors.grey, fontSize: 10),
        //                     ),
        //                     const SizedBox(
        //                       height: 5,
        //                     ),
        //                     if(listOfFeatureItem[index].discount =="0")...[]else...[
        //                       Text(
        //                         "${listOfFeatureItem[index].discount}% Off",
        //                         style: const TextStyle(
        //                             color: Colors.green, fontSize: 10),
        //                       ),
        //                     ],
        //                     Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                           listOfFeatureItem[index].discount =="0" ? "₹ ${listOfFeatureItem[index].price}"
        //                               :listOfFeatureItem[index].discount_price,
        //                           style: const TextStyle(
        //                               color: Colors.blue, fontSize: 15),
        //                         ),
        //                         if(listOfFeatureItem[index].discount =="0")...[]else...[
        //                           Text("₹ ${listOfFeatureItem[index].price}",style: const TextStyle(color: Colors.red,decoration: TextDecoration.lineThrough,fontSize: 10),),
        //                         ],
        //                         const Spacer(),
        //                         InkWell(
        //                           // padding: const EdgeInsets.only(bottom: 10),
        //                           onTap: () {
        //                             if (listOfFeatureItem[index].is_cart == "0") {
        //                               setState(() {
        //                                 listOfFeatureItem[index].is_cart == "1";
        //                                 // addedItems++;
        //                               });
        //                               // addToCart(listOfFeatureItem[index].id.toString()).then((value) {
        //                               //
        //                               // });
        //                               // addToCart(sectionProductList[index].id.toString());
        //                             } else {
        //                               setState(() {
        //                                 listOfFeatureItem[index].is_cart == "0";
        //                               });
        //                               // removeCart(listOfFeatureItem[index].id.toString()).then((value) {
        //                               //   setState(() {
        //                               //     getSectionProductList();
        //                               //   });
        //                               // });
        //                             }
        //                           },
        //                           child: Icon(
        //                             size: 20,
        //                             Icons.shopping_cart_outlined,
        //                             color: listOfFeatureItem[index].is_cart == "1"
        //                                 ? Colors.blue
        //                                 : Colors.grey,
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           )),
        //     );
        //   },
        // ),
    );
  }
}

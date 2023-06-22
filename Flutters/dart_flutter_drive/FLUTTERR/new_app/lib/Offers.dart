// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/Model/data/offer/offer_data.dart';
import 'package:new_app/Model/models/offer/offer_model.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'package:http/http.dart' as http;
import 'Model/models/cartlist/home_count_model.dart';
import 'server_url/server_url.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  bool copyIcon = true;
  List<OfferListData> offerListApi = [];
  HomeCountModel? homeCountApi;
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getOfferDataList();
    HomeCount();

    super.initState();
  }

  Future<List<OfferListData>> getOfferDataList() async {
    Map data = {
      'user_id':"3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}offerList");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      offerListApi = rest.map<OfferListData>((e) => OfferListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("offerListApi");
      print(response.body);
    }
    return offerListApi;
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
          title: const Text('Offers'),
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
          physics: const NeverScrollableScrollPhysics(),
          child:ListView.builder(
              shrinkWrap: true,
              itemCount: offerListApi.length,
              itemBuilder: (context, index) {
                return  SizedBox(
                  height:MediaQuery.of(context).size.height*0.15,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAlias,
                      elevation:2,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("  Coupon Code:  ${offerListApi[index].offer_code}"),
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      copyIcon =!copyIcon;
                                    });
                                  }, icon: Icon(Icons.copy,color: copyIcon ? Colors.black : Colors.blue,))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("  Category:  All"),
                              Text("Discount: ${offerListApi[index].offer_discount}   ")
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("  Valid from: ${offerListApi[index].start_date}"),
                              Text("Valid to: ${offerListApi[index].end_date}   "),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        ),

    );
  }
}


// class _OfferScreenState extends State<OfferScreen> {
//   late HomeCountModel homeCountModel;
//   bool _isLoading = false;
//   String favCount = "";
//   String cartCount = "";
//
//
//   Future<void> getHomeCount()async{
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     Map data = {
//       "user_id" : prefs.getString("id")
//     };
//     Uri url = Uri.parse("${STATIONARYCONFIG.base_app_url}homeCount");
//     var response = await http.post(url,body: data);
//     homeCountModel = HomeCountModel.fromJsonMap(json.decode(response.body));
//     if(response.statusCode == 200) {
//       if(homeCountModel.status == 200){
//         setState(() {
//           _isLoading = false;
//           favCount = homeCountModel.homeCountData.favoriteCount.toString();
//           cartCount = homeCountModel.homeCountData.cartCount.toString();
//
//         });
//       }else{
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }else{
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
//
//
//   @override
//   void initState() {
//     _isLoading = true;
//     getHomeCount();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         systemOverlayStyle: const SystemUiOverlayStyle(
//             statusBarColor: Colors.transparent,
//             statusBarIconBrightness: Brightness.dark
//         ),
//         title: const Text(
//           'Offers',
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Colors.blue.shade400,
//                 Colors.deepPurpleAccent.shade200,
//               ])),
//         ),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 onPressed: () async{
//                   await Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoriteScreen(),));
//                 },
//                 icon: const Icon(
//                   Icons.favorite,
//                   color: Colors.white,
//                 ),
//               ),
//               if(favCount != "0")...[ Positioned(
//                 left: 23,
//                 top: 5,
//                 child: Container(
//                   padding:  const EdgeInsets.all(2),
//                   decoration:   const BoxDecoration(
//                     color: Colors.yellow,
//                     shape: BoxShape.circle,
//                   ),
//                   child:Text(favCount,style:  TextStyle(color: Colors.grey.shade600),),
//                 ),
//               )],
//             ],
//           ),
//           Stack(
//             children: [
//               IconButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const CartScreen(),
//                       ));
//                 },
//                 icon: const Icon(
//                   Icons.add_shopping_cart,
//                   color: Colors.white,
//                 ),
//               ),
//               if(cartCount != "0")...[Positioned(
//                 left: 23,
//                 top: 5,
//                 child: Container(
//                   padding: const EdgeInsets.all(2),
//                   decoration:  const BoxDecoration(
//                     color: Colors.yellow,
//                     shape: BoxShape.circle,
//                   ),
//                   child:  Text(cartCount,style:  TextStyle(color: Colors.grey.shade600)),
//                 ),
//               ),],
//             ],
//           )
//         ],
//       ),
//
//       body: _isLoading ? const Center(child: CircularProgressIndicator(),) : ListView.builder(
//         itemCount: 1,
//         shrinkWrap: true,
//
//         // padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
//         itemBuilder: (context, index) {
//           return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                   color: Colors.grey.shade50,
//                   spreadRadius: 1,
//                   blurRadius: 2,
//                   offset: const Offset(0, -1)),
//               const BoxShadow(
//                   color: CupertinoColors.systemGrey3,
//                   spreadRadius: 1,
//                   blurRadius: 2,
//                   offset: Offset(0, 1))
//             ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
//             margin:
//             const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
//             height: MediaQuery.of(context).size.height / 7.8,
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   color: Colors.white,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Coupon Code: HRKS26'),
//                       InkWell(
//                         child: Container(
//                           child: const Icon(
//                             Icons.copy,
//                             color: Colors.blue,
//                             size: 20,
//                           ),
//                         ),
//                         onTap: () {
//                           Clipboard.setData(const ClipboardData(text: " HRKS27"))
//                               .then((value) {
//                             return Fluttertoast.showToast(
//                                 msg: 'Coupon Code Copied to Clipboard',
//                                 textColor: Colors.white,
//                                 backgroundColor: Colors.black,
//                                 gravity: ToastGravity.BOTTOM,
//                                 fontSize: 15,
//                                 timeInSecForIosWeb: 2,
//                                 toastLength: Toast.LENGTH_SHORT);
//                           });
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Category:',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' All',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Discount:',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' 15%',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Valid from:',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' 03/03/23',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'Valid to:',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' 05/03/2023',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

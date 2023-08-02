import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/Model/models/wishlist/wish_list2_model.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'package:http/http.dart' as http;
import 'package:new_app/server_url/server_url.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<CartList> cartList = [];
  List<ProductList> productList = [];
  List<ProductListModel> wishApi = [];
   bool _isLoading = false;

  @override
  void initState() {
    getWishList();
    _isLoading = true;
    super.initState();
  }
  
  Future<List<ProductListModel>> getWishList() async {
    Map data = {
      'user_id' : "11",
      'page_size' : "10",
      'page_number' : "1"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}wishList");
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data['data'] as List;
      wishApi = rest.map<ProductListModel>((e) => ProductListModel.fromJsonMap(e)).toList();
      setState(() {
         _isLoading = false;
      });
      print("wishApi");
      print(response.body);
    }
    return wishApi;
  }
  removeData(index) {
    setState(() {
      wishApi.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              itemCount: wishApi.length,
              padding: const EdgeInsets.only(bottom: 10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: wishApi[index].id),));
                  },
                  child: Dismissible(
                      key: ValueKey(index),
                      onDismissed: (direction) {
                        if(direction == DismissDirection.startToEnd) {}
                        else {}
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
                                height: MediaQuery.of(context).size.height*0.28,
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(12),
                                               child:
                                               Image(image:  NetworkImage(wishApi[index].productListData.product_image),fit: BoxFit.cover,width:MediaQuery.of(context).size.width*0.30,height:MediaQuery.of(context).size.height*0.18),
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                        margin: const EdgeInsets.only(bottom: 20),
                                                        child: Text(wishApi[index].productListData.product_name
                                                          ,style: const TextStyle(fontSize: 18),)),
                                                  ],
                                                ),
                                                const Text("Are you sure you want to move this"),
                                                Container(
                                                    margin: const EdgeInsets.only(bottom: 70),
                                                    child: const Text("item from bag?"))
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
                                                  child: const Text("NO",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
                                                  });
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 30),
                                                  child: const Text("YES ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue),),
                                                ),
                                              ),]
                                        )],
                                    ),
                                    Positioned(
                                      right:10,
                                      top:10,
                                      child: InkWell(
                                        onTap: () {
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
                      },
                      direction: DismissDirection.startToEnd,
                      background: Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.all(24),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16)),
                          child: const Icon(Icons.delete,color: Colors.white,size: 30,)
                      ),
                      child:   Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                          child: Stack(
                            children: [
                              Row(
                                  children:[
                                     Padding(
                                       padding: const EdgeInsets.all(6),
                                       child: SizedBox(
                                          height: MediaQuery.of(context).size.height*0.16,
                                          width: MediaQuery.of(context).size.width*0.26,
                                          child: Image(image: NetworkImage(wishApi[index].productListData.product_image),fit: BoxFit.cover,)
                                         ),
                                     ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(top: 4),
                                            child: Text(wishApi[index].productListData.product_name
                                              ,style: const TextStyle(fontSize: 15),)),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(wishApi[index].productListData.brand_name
                                          ,style: const TextStyle(fontSize: 13),),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.currency_rupee_outlined,size: 15),
                                            Text(wishApi[index].productListData.price
                                              ,style: const TextStyle(fontSize: 16),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]),
                              Positioned(
                                right: 5,
                                top: 5,
                                child:  InkWell(
                                  onTap:() {
                                    showModalBottomSheet(
                                        isScrollControlled: false,
                                        elevation: 15,
                                        context: context,
                                        builder: (contaxt) {
                                          return  SizedBox(
                                            height: MediaQuery.of(context).size.height*0.28,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(12),
                                                          child: Image(image:  NetworkImage(wishApi[index].productListData.product_image),fit: BoxFit.cover,width:MediaQuery.of(context).size.width*0.25,height:MediaQuery.of(context).size.height*0.18),
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Container(
                                                                    margin: const EdgeInsets.only(bottom: 20),
                                                                    child: Text(wishApi[index].productListData.product_name
                                                                      ,style: const TextStyle(fontSize: 18),)),
                                                              ],
                                                            ),
                                                            const Text("Are you sure you want to move this"),
                                                            Container(
                                                                margin: const EdgeInsets.only(bottom: 70),
                                                                child: const Text("item from bag?"))
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
                                                              child: const Text("NO",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
                                                              });
                                                            },
                                                            child: Container(
                                                              margin: const EdgeInsets.only(top: 30),
                                                              child: const Text("YES",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue),),
                                                            ),
                                                          ),]
                                                    )],
                                                ),
                                                Positioned(
                                                  right:10,
                                                  top:10,
                                                  child: InkWell(
                                                    onTap: () {
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
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child: const Icon(Icons.close,color: Colors.black,)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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

class CartList{
  final String image;
  final String subName;
  final String book;
  final String price;

  CartList({
    required this.image,
    required this.subName,
    required this.book,
    required this.price
  });
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
      {
        required this.image,
        required this.title,
        required this.BrandName,
        required this.price,
        required this.discountPrice,
        required this.discount,
        required this.school,
        required this.boardName,
        required this.mediumName,
        required this.standardName,
        required this.subjectName
      });
}
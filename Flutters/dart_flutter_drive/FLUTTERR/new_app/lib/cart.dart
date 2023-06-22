// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, use_build_context_synchronously, unrelated_type_equality_checks, avoid_print

import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:new_app/Model/models/cartlist/cart_list_model.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Checkout.dart';
import 'Model/models/cartlist/apply_coupon_model.dart';
import 'Model/models/cartlist/remove_cart_model.dart';
import 'Model/models/wishlist/save_wishlist_model.dart';
import 'server_url/server_url.dart';
import 'package:http/http.dart' as http;

class Cart extends StatefulWidget {
  const Cart({Key? key, }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late CartListModel cartModel;
  late ApplyCouponModel applyCouponApi;
  late SaveWishListModel saveWishListApi;
  late RemoveToCartModel removeToCartApi;
  int discountPercentage = 0;
  int couponDiscountAppliedValue = 0;
  int orderTotalValue = 0;
  bool _isLoading = false;
  int i = 1;
  bool isClick = false;
  TextEditingController couponcontroller = TextEditingController();

  @override
  void initState(){
  _isLoading = true;
  getCartDetails();
  couponcontroller.text = "";
  super.initState();
  }

  Future<void> getCartDetails() async{
    Map data = {
      'user_id' : "3",
      'page_size' : "10",
      'page_number' : "1"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}cartList");
    var response = await http.post(url, body: data);
    cartModel = CartListModel.fromJsonMap(json.decode(response.body));
    if(response.statusCode == 200){
      if(cartModel.status == 200){
        setState(() {
          _isLoading = false;
        });
      }else{
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

  Future<void> ApplyCoupon(String coupon, BuildContext ctx) async{
    Map data = {
      'coupon_code' : coupon,
      'user_id' : "3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}applyCoupon");
    var response = await http.post(url,body: data);
    applyCouponApi = ApplyCouponModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200){
      if(applyCouponApi.status == 200){
        setState(() {
          _isLoading = false;
          discountPercentage = int.parse(applyCouponApi.applyCouponData.offer_discount);
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(applyCouponApi.message)));
       }
      else{
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(applyCouponApi.message)));
      }
    }
    else{
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
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
          // ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(saveWishListApi.message)));
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
          // ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(content: Text(removeToCartApi.message)));
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
  Widget build(BuildContext context){
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout(totalDiscount: cartModel.cartListData.cartSummaryData.discount_total.toString(), couponId: applyCouponApi.applyCouponData.id.toString(), totalAmount: applyCouponApi.applyCouponData.total_amount.toString(), subtotal: cartModel.cartListData.cartSummaryData.sub_total.toString(), offerDiscount: applyCouponApi.applyCouponData.offer_discount,),));

                    setState(() {
                      discountPercentage = int.parse(applyCouponApi.applyCouponData.offer_discount);

                    });
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
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
            children:[
              ListView.builder(
                itemCount: cartModel.cartListData.cartDetailListData.length,
                padding: const EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(productId: cartModel.cartListData.cartDetailListData[index].id,)),
                      );
                    },
                    child: Dismissible(
                        key: ValueKey(index),
                        onDismissed: (direction) {
                          if(direction == DismissDirection.startToEnd) {
                            print("Remove");
                          }else {
                            print("Favorites");
                          }
                        },
                        confirmDismiss: (direction) {
                          return showModalBottomSheet(
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
                                                child: Image(image: NetworkImage(cartModel.cartListData.cartDetailListData[index].productListData.product_image),fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.25,height:MediaQuery.of(context).size.height*0.18),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                          margin: const EdgeInsets.only(bottom: 20),
                                                          child: cartModel.cartListData.cartDetailListData[index].productListData.product_name.toString().length < 20 ? Text(cartModel.cartListData.cartDetailListData[index].productListData.product_name,style: const TextStyle(fontSize: 18),) : Text("${cartModel.cartListData.cartDetailListData[index].productListData.product_name.substring(0,19)}...",style: const TextStyle(fontSize: 18),)),
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
                                                    setState(() {
                                                      _isLoading = true;
                                                    });
                                                    RemoveCart(cartModel.cartListData.cartDetailListData[index].id.toString(), context).then((value){
                                                      setState(() {
                                                        getCartDetails();
                                                      });
                                                    });
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets.only(top: 30),
                                                    child: const Text("REMOVE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _isLoading = true;
                                                      RemoveCart(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context);
                                                      SaveWishList(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context).then((value) {
                                                        getCartDetails();
                                                      });
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    margin: const EdgeInsets.only(top: 30),
                                                    child: const Text("MOVE TO WISHLIST ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue),),
                                                  ),
                                                ),]
                                          )
                                        ],
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
                              clipBehavior: Clip.none, fit: StackFit.passthrough,
                              children: [
                                Row(
                                    children:[
                                      Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: SizedBox(
                                            height: MediaQuery.of(context).size.height*0.16,
                                            width: MediaQuery.of(context).size.width*0.26,
                                            child: Image(image: NetworkImage(cartModel.cartListData.cartDetailListData[index].productListData.product_image),fit: BoxFit.cover,)),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.only(top: 4),
                                              child: cartModel.cartListData.cartDetailListData[index].productListData.product_name.toString().length < 20 ? Text(cartModel.cartListData.cartDetailListData[index].productListData.product_name,style: const TextStyle(fontSize: 18),) : Text("${cartModel.cartListData.cartDetailListData[index].productListData.product_name.substring(0,19)}...",style: const TextStyle(fontSize: 18),)),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(cartModel.cartListData.cartDetailListData[index].productListData.brand_name,style: const TextStyle(fontSize: 13),),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.currency_rupee_outlined,size: 15),
                                              Text(cartModel.cartListData.cartDetailListData[index].productListData.price,style: const TextStyle(fontSize: 16),),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 13,
                                          ),
                                          Container(
                                            width:MediaQuery.of(context).size.width*0.22,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.blue),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                InkWell(
                                                    onTap:() {
                                                      setState(() {
                                                        i = max(i - 1, 1);
                                                      });
                                                      setState(() {
                                                        int.parse(i.toString()) > 1 ? Icons.delete_outline :
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
                                                                              child: Image(image:  NetworkImage(cartModel.cartListData.cartDetailListData[index].productListData.product_image),fit: BoxFit.cover,width:MediaQuery.of(context).size.width*0.25,height:MediaQuery.of(context).size.height*0.18),
                                                                            ),
                                                                            Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
                                                                                        margin: const EdgeInsets.only(bottom: 20),
                                                                                        child: cartModel.cartListData.cartDetailListData[index].productListData.product_name.toString().length < 20 ? Text(cartModel.cartListData.cartDetailListData[index].productListData.product_name,style: const TextStyle(fontSize: 18),) : Text("${cartModel.cartListData.cartDetailListData[index].productListData.product_name.substring(0,9)}...",style: const TextStyle(fontSize: 18),)),
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
                                                                                  setState(() {
                                                                                    _isLoading = true;
                                                                                  });
                                                                                  RemoveCart(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context).then((value) {
                                                                                    setState(() {
                                                                                      getCartDetails();
                                                                                    });
                                                                                  });
                                                                                },
                                                                                child: Container(
                                                                                  margin: const EdgeInsets.only(top: 30),
                                                                                  child: const Text("REMOVE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                                                                                ),
                                                                              ),
                                                                              InkWell(
                                                                                onTap: () {
                                                                                  setState(() {
                                                                                    _isLoading = true;
                                                                                    RemoveCart(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context);
                                                                                    SaveWishList(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context).then((value) {
                                                                                      getCartDetails();
                                                                                    });
                                                                                  });
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: Container(
                                                                                  margin: const EdgeInsets.only(top: 30),
                                                                                  child: const Text("MOVE TO WISHLIST ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue),),
                                                                                ),
                                                                              ),]
                                                                        )
                                                                      ],
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
                                                      });
                                                    },
                                                    child: Icon(int.parse(i.toString()) > 1 ? Icons.remove : Icons.delete_outline,color: Colors.white,size: 22,)
                                                ),
                                                Container(
                                                    margin: const EdgeInsets.only(right: 4),
                                                    width: 30,
                                                    alignment: Alignment.center,
                                                    color:Colors.white,
                                                    child: Text("$i", textScaleFactor: 1.40)
                                                ),
                                                InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      i++;
                                                    });
                                                  },
                                                  child: const Text("+",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w300),),
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
                                  child:  InkWell(
                                    onTap:() {
                                      showModalBottomSheet(
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
                                                              child: Image(image:  NetworkImage(cartModel.cartListData.cartDetailListData[index].productListData.product_image),fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.25,height:MediaQuery.of(context).size.height*0.18),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                        margin: const EdgeInsets.only(bottom: 20),
                                                                        child: cartModel.cartListData.cartDetailListData[index].productListData.product_name.toString().length < 10 ? Text(cartModel.cartListData.cartDetailListData[index].productListData.product_name,style: const TextStyle(fontSize: 18),) : Text("${cartModel.cartListData.cartDetailListData[index].productListData.product_name.substring(0,19)}...",style: const TextStyle(fontSize: 18),)),
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
                                                                  setState(() {
                                                                    _isLoading = true;
                                                                  });
                                                                  RemoveCart(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context).then((value) {
                                                                    setState(() {
                                                                      getCartDetails();
                                                                    });
                                                                  });
                                                                },
                                                                child: Container(
                                                                  margin: const EdgeInsets.only(top: 30),
                                                                  child: const Text("REMOVE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _isLoading = true;
                                                                    RemoveCart(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context);
                                                                    SaveWishList(cartModel.cartListData.cartDetailListData[index].productListData.id.toString() , context).then((value) {
                                                                      getCartDetails();
                                                                    });
                                                                  });
                                                                  Navigator.pop(context);
                                                                },
                                                                child: Container(
                                                                  margin: const EdgeInsets.only(top: 30),
                                                                  child: const Text("MOVE TO WISHLIST ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.blue),),
                                                                ),
                                                              ),]
                                                        )
                                                      ],
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
              const InkWell(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("View All Products",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text("Coupons and Discounts",style: TextStyle(fontWeight: FontWeight.w500),)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width*4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height:MediaQuery.of(context).size.height*0.06,
                            width: MediaQuery.of(context).size.width*0.60,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xFFF5F6F9)),
                            child: TextFormField(
                              controller: couponcontroller,
                              readOnly: !isClick == true ? false : true,
                              cursorColor: Colors.grey[600],
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Apply the coupon code here",
                              ),)),
                      ),

                      InkWell(
                        onTap: () {
                          if(couponcontroller.text.isNotEmpty){
                            setState(() {
                              _isLoading = false;
                            });
                            ApplyCoupon(couponcontroller.text, context).then((value){
                              setState(() {
                                couponDiscountAppliedValue = ((cartModel.cartListData.cartSummaryData.sub_total * discountPercentage)/100).round();
                                orderTotalValue = (cartModel.cartListData.cartSummaryData.order_total - couponDiscountAppliedValue);
                              });
                            });
                            setState(() {
                              isClick = !isClick;
                            });
                            if(!isClick == true){
                              setState(() {
                                couponcontroller.clear();
                              });
                            }
                          }
                          },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: !isClick == true ? Colors.blue : Colors.red),
                          child: Text(!isClick == true? "Apply" : "Remove",style: const TextStyle(color: Colors.white),),
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
                    child: const Text("Payment Summary",style: TextStyle(fontWeight: FontWeight.w500),)),
              ),
              Container(
                margin: const EdgeInsets.all( 3),
                height: MediaQuery.of(context).size.height/2.90,
                width: MediaQuery.of(context).size.width*0.95,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total MRP",style: TextStyle(fontSize: 15)),
                            Row(
                              children: [
                                const Icon(Icons.currency_rupee,size: 18,),
                                Text("${cartModel.cartListData.cartSummaryData.sub_total}",style: const TextStyle(fontSize: 15))
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Discount on MRP",style: TextStyle(fontSize: 15),),
                            Row(
                              children: [
                                const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),),
                                const Icon(Icons.currency_rupee,size: 18,color: Colors.green,),
                                Text("${cartModel.cartListData.cartSummaryData.discount_total}",style: const TextStyle(color: Colors.green,fontSize: 15),)
                             ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Coupon Discount",style: TextStyle(fontSize: 15)),
                            Row(
                              children: [
                                const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),),
                                const Icon(Icons.currency_rupee,size: 18,color: Colors.green,),
                                Text(!isClick == true? "0" : "$couponDiscountAppliedValue",style: const TextStyle(color: Colors.green,fontSize: 15),)
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(" Order Total",style: TextStyle(fontSize: 15)),
                            Row(
                              children:  [
                                const Icon(Icons.currency_rupee,size: 18,),
                                Text(!isClick == true ? "${cartModel.cartListData.cartSummaryData.order_total}" : "$orderTotalValue",style: const TextStyle(fontSize: 15)),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
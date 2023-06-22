// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:new_app/Model/models/cartlist/checkout_model.dart';
import 'package:http/http.dart' as http;
import 'server_url/server_url.dart';

class Checkout extends StatefulWidget {
  final String totalDiscount;
  final String couponId;
  final String totalAmount;
  final String subtotal;
  final String offerDiscount;
  const Checkout({Key? key, required this.totalDiscount, required this.couponId, required this.totalAmount, required this.subtotal, required this.offerDiscount}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  late CheckOutModel checkOutApi;
  bool value = true;
  bool value1 = false;
  bool _isLoading = false;
  int discountPercentage = 0;
  int couponDiscountAppliedValue = 0;
  int orderTotalValue = 0;

  @override
  void initState(){
    _isLoading = true;
    super.initState();
  }


  checkOut(String checkData,BuildContext context) async{
    Map data = {
      'user_id': "3",
      'user_address_id': "",
      'coupon_id' : widget.couponId,
      'payment_type' : "1",
      'total_discount' : widget.totalDiscount,
      'total_amount' : widget.totalAmount,
      'offer_discount' : widget.offerDiscount,
      'transaction_id' : "",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}checkOut");
    var response = await http.post(url,body: data);
    checkOutApi = CheckOutModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200){
      if(checkOutApi.status == 200){
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(checkOutApi.message)));
      }
      else{
        setState(() {
          _isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(checkOutApi.message)));
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
                  "Cancel",
                  textAlign: TextAlign.center,
                )),
            Expanded(
                child: MaterialButton(
                  height: 50,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout(totalDiscount: '', couponId: '', totalAmount: '', subtotal: '', offerDiscount: '',),));
                  },
                  color: const Color.fromARGB(255, 29, 98, 228),
                  child: const Text(
                    "Proceed Payment",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text("Pick up Address")),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.2,
                    child: Checkbox(
                      shape: const CircleBorder(),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },),
                  ),
                  // ListView.builder(
                  //   //itemCount: 2,
                  //     itemBuilder: (context, index) {
                  //       return const
                  Text("Madhavbaug Vidhyabhavan, New Kosad \nRoad, Amroli 394107. \nMobile No: 2645247986")
                  //       },
                  // )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                child: const Text("Payment Summary")),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Text("Total MRP",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 210),
                            child: const Icon(Icons.currency_rupee,size: 18,)),
                        Text(discountPercentage.toString()
                            // checkOutApi.checkOutData.total_amount
                            //"${cartModel.cartListData.cartSummaryData.sub_total}"
                            ,style: const TextStyle(fontSize: 15))
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text("Discount on MRP",style: TextStyle(fontSize: 15),),
                        Container(
                            margin: const EdgeInsets.only(left: 160),
                            child: const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),)),
                        Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(Icons.currency_rupee,size: 18,color: Colors.green,)),
                        const Text("0",style: TextStyle(color: Colors.green,fontSize: 15),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text("Coupon Discount",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 160),
                            child: const Text("-",style: TextStyle(color: Colors.green,fontSize: 30),)),
                        Container(
                            margin: const EdgeInsets.only(left: 1),
                            child: const Icon(Icons.currency_rupee,size: 18,color: Colors.green,)),
                        const Text("0",style: TextStyle(color: Colors.green),)
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Text(" Order Total",style: TextStyle(fontSize: 15)),
                        Container(
                            margin: const EdgeInsets.only(left: 200),
                            child: const Icon(Icons.currency_rupee,size: 18,)),
                        const Text("34",style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10,top: 10),
                child: const Text("Mode of Payment")),
            Container(
              height: MediaQuery.of(context).size.height*0.10,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.2,
                    child: Checkbox(
                      shape: const CircleBorder(),
                      value: value1,
                      onChanged: (value) {
                        setState(() {
                          this.value1 = value!;
                        });
                      },),
                  ),
                  const Text("Cash on Pick Up")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

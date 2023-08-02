import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/product_detail_controller.dart';
import 'package:foodapp/widget/product_detail_review.dart';
import 'package:get/get.dart';
import '../widget/product_detail_delivery.dart';

class ProductDetailScreen extends GetView<ProductDetailController> {
  static String pageId = '/screenProductDetail';
  ProductDetailScreen({Key? key}) : super(key: key);
  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    final ProductDetailController tabx = Get.put(ProductDetailController());

    return Scaffold(
     body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               child: Stack(
                 children: [
                   SizedBox(
                       height: MediaQuery.of(context).size.height*0.3,
                         child: const Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.j7kQydZvKN_mnNE0U6GRhAHaDt&pid=Api&P=0&h=180"),fit: BoxFit.fill),
                     ),
                   Container(
                     margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.23),
                     height: MediaQuery.of(context).size.height*1.74,
                     decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),color: Colors.pink[50]),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                         Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               const Text("Burger King",style: TextStyle(fontSize: 20),),
                               const Icon(Icons.safety_check,color: Colors.green,),
                               SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                               const Text("Take Away",style: TextStyle(fontSize: 18,color: Colors.orange),),
                               const Icon(Icons.favorite,color: Colors.orange,),
                               SizedBox(width: MediaQuery.of(context).size.width*0,),
                             ],
                           ),
                         SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                         const Padding(padding: EdgeInsets.only(left: 10,right: 8),
                             child:  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text("Open",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400,fontSize: 15),),
                                 Text("  1453 W Manchester Ave Los Angeles CA 90047",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                               ],
                             ),),
                         SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                         Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 height: MediaQuery.of(context).size.height*0.05,
                                 width: MediaQuery.of(context).size.width*0.2,
                                 padding: const EdgeInsets.only(left: 13),
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orangeAccent),
                                 child: const Row(
                                   children: [
                                     Icon(Icons.star,color: Colors.white,),
                                     Text("4.5",style: TextStyle(color: Colors.white),)
                                   ],
                                 ),
                               ),
                               SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                               const Icon(Icons.access_time_filled),
                               const Text("15 min"),
                               SizedBox(width: MediaQuery.of(context).size.width*0.11,),
                               const Icon(Icons.attach_money),
                               const Text("Free Shipping"),
                             ],
                           ),
                         SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                         Container(
                             height: MediaQuery.of(context).size.height*0.05,
                             width: MediaQuery.of(context).size.width*0.96,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[300]),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 const Icon(Icons.percent,color: Colors.orangeAccent,),
                                 const Text("Save 15.00 with code Total Dish"),
                                 SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                               ],
                             ),
                           ),
                         SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                         DefaultTabController(length: 2, child: TabBar(
                             indicatorColor: Colors.orange,
                             labelColor: Colors.orange,
                             controller: tabx.controller,
                             tabs: tabx.productTab,
                           )),
                         Flexible(
                             child: TabBarView(
                               controller: tabx.controller,
                               children: [
                                 ProductDelivery(),
                                 ProductDetailReview(),
                               ],
                             ),
                           )
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ],
         )
     ),
    );
  }
}

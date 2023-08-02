import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/product_detail_controller.dart';
import 'package:get/get.dart';
import 'product_bottomsheet.dart';

class ProductDelivery extends StatelessWidget {
  ProductDelivery({Key? key}) : super(key: key);
  final controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 23),
            child:const Text("Popular Items",style: TextStyle(color: Colors.red,fontSize: 20),),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.22,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        isScrollControlled: true,
                        context: context,
                        builder: (context){
                          return ProductBottomSheet();
                        }
                    );
                  },
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5,),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange[100]),
                              child: const Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180"),fit: BoxFit.fill),
                            ),
                            Spacer(),
                            const Text("Extreem Cheese"),
                            const Text("whopper JR"),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.attach_money),
                                Text("5.99   *"),
                                Text("Burger")
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
              ),
          const SizedBox(height: 8,),
          const Divider(),
          const SizedBox(height: 12,),
          Container(
            padding: const EdgeInsets.only(left: 23),
            child: const Text("Hot Burger Combo",style: TextStyle(fontSize: 18),),
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange[100]),
                      child: const Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180"),fit: BoxFit.fill),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Extreem Cheese"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.attach_money),
                            Text("5.99  *  "),
                            Text("Burger")
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                    const Icon(Icons.star),
                  ],
                ),);
            },),
          const SizedBox(height: 8,),
          const Divider(),
          const SizedBox(height: 12,),
          Container(
            padding: const EdgeInsets.only(left: 23),
            child: const Text("Fried Chicken",style: TextStyle(fontSize: 18),),
          ),
          ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10,left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.3,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange[100]),
                            child: const Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180"),fit: BoxFit.fill),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Extreem Cheese"),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.attach_money),
                                  Text("5.99  *  "),
                                  Text("Burger")
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                          const Icon(Icons.star,),
                        ],
                      ),
                    );
                    },
                ),
        ],
      );
  }
}
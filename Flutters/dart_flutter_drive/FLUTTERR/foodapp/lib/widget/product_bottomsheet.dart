import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/product_detail_controller.dart';
import 'package:get/get.dart';
import '../screen/confirm_order_screen.dart';

class ProductBottomSheet extends StatelessWidget {
  ProductBottomSheet({Key? key}) : super(key: key);
  final controllerr = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller){
          return Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.01,
                    width: MediaQuery.of(context).size.width*0.12,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[300]),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  const Text("Extreme cheese whopper JR",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1.1),),
                  const Padding(
                    padding: EdgeInsets.only(left: 35,right: 30),
                    child: Text("A signature flame-grilled beef patty topped with smoked bacon."),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: MediaQuery.of(context).size.height*0.3),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child:  const Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180"),fit: BoxFit.fill),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        controllerr.itemsize.length, (index) {
                      String ans= controllerr.itemsize[index];
                      bool selecteans = ans == controllerr.isSelected.value;
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child:  GestureDetector(
                          onTap: () {
                            controllerr.isSelected.value = ans;
                            print('Selected size: ${ans}');
                            controllerr.getTotalPrice();
                            controllerr.update();
                          },
                          child: GetBuilder<ProductDetailController>(
                            builder: (controllerrr) {
                              return Container(
                                height: MediaQuery.of(context).size.height*0.072,
                                width: MediaQuery.of(context).size.width*0.14,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: selecteans  ? Colors.orangeAccent : Colors.white),
                                child: Text(controllerr.itemsize[index],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                              );
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 50,right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.orange[100],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                            onPressed: () {
                              controllerr.counter.value  = max(controllerr.counter.value - 1, 1);
                              controllerr.getTotalPrice();
                            },
                            child: const Icon(Icons.remove ,color: Colors.orange,size: 40,)
                        ),
                        Text(controllerr.counter.value.toString(), textScaleFactor: 1.50),
                        FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Colors.orange[100],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                            onPressed: (){
                              controllerr.counter.value++;
                              controllerr.getTotalPrice();
                            },
                            child: const Icon(Icons.add ,color: Colors.orange,size: 40,)
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text("Price",style: TextStyle(fontSize: 18),),
                          Row(
                            children: [
                              const Icon(Icons.attach_money_sharp,color: Colors.orange,),
                              Text(controllerr.total.value.toString(),style: const TextStyle(color: Colors.orange,fontSize: 21)),
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          Get.to(() => ConfirmOrderScreen(price: controllerr.total.value.toString(),));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.5,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.orange),
                          child: const Text("Add to Order",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
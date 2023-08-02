import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/foodmain_controller.dart';
import 'package:get/get.dart';

class Nearby extends StatelessWidget {
  Nearby({Key? key}) : super(key: key);
  final controller = Get.find<FoodMainController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: controller.foodtabnearby.length,
        itemBuilder: (context,item) {
            return Padding(
                padding: const EdgeInsets.only(left: 0,),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Image.network(controller.foodtabnearby[item].imagenearby,fit: BoxFit.cover),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.02,),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                        Text(controller.foodtabnearby[item].product1nearby,style: const TextStyle(fontSize: 20),),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        const Icon(Icons.check_circle,color: Colors.green,)
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.001,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                        Text(controller.foodtabnearby[item].openclosenearby),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        Text('${controller.foodtabnearby[item].product2nearby} *'),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        Text('${controller.foodtabnearby[item].product3nearby} *'),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        Text('${controller.foodtabnearby[item].product4nearby} *'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        Container(
                          height: MediaQuery.of(context).size.height*0.04,
                          width: MediaQuery.of(context).size.width*0.15,
                          margin: const EdgeInsets.only(left: 15,right: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.orangeAccent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.star,color: Colors.white,size: 19,),
                              Text(controller.foodtabnearby[item].ratingnearby,style: const TextStyle(fontSize: 17,color: Colors.white),),
                            ],
                          )
                        ),
                        const Text('*'),
                        const Icon(Icons.location_on,color: Colors.grey,),
                        Text("${controller.foodtabnearby[item].kmnearby}   *"),
                        const Icon(Icons.adb_sharp,color: Colors.grey,),
                        Text(controller.foodtabnearby[item].addressnearby),
                        SizedBox(width: MediaQuery.of(context).size.width*0.08,),

                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.05,),

                  ],
                ),
            );
        }
    );
  }
}
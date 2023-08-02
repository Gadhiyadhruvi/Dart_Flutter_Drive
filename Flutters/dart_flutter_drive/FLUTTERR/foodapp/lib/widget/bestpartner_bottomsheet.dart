import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller/foodmain_controller.dart';

class BestPartnerBottomSheet extends StatelessWidget {
  BestPartnerBottomSheet({Key? key}) : super(key: key);
  final controllerr = Get.find<FoodMainController>();

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
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 38,right: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Container(
                        margin: const EdgeInsets.only(left: 140),
                          height: MediaQuery.of(context).size.height*0.01,
                          width: MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.grey[300]),
                        ),
                      const Center(
                        child: Text("Best Partner",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 17),),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: controllerr.bestpartnerlist.length,
                            itemBuilder: (context,item) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(17),
                                      child: Image(image: NetworkImage(controllerr.bestpartnerlist[item].imagepartner),height: MediaQuery.of(context).size.height*0.22,fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.017,),
                                    Row(
                                      children: [
                                        Text(controllerr.bestpartnerlist[item].namepartner,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 0.9),),
                                        const Icon(Icons.check_circle,color: Colors.green,)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(controllerr.bestpartnerlist[item].openclosepartener,style: const TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.w400),),
                                        Text("  *  Coffiee  *  Tea  *  Cake",style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: MediaQuery.of(context).size.width*0.18,
                                          padding: const EdgeInsets.only(top: 4,bottom: 4),
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.orange),
                                          child: Row(
                                            children: [
                                              SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                                              const Icon(Icons.star,color: Colors.white,size: 20,),
                                              Text(controllerr.bestpartnerlist[item].ratingpartner,style: const TextStyle(color: Colors.white,fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Text(" *",style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.w400),),
                                        Icon(Icons.location_on,color: Colors.grey[600],),
                                        Text("${controllerr.bestpartnerlist[item].kmpartner}km"),
                                        Text("*",style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.w400),),
                                        Icon(Icons.attach_money_sharp,color: Colors.grey[600],),
                                        Text("Free shipping",style: TextStyle(color: Colors.grey[600],fontSize: 17,fontWeight: FontWeight.w400),),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
  }
}

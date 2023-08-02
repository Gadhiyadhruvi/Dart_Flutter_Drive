import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/foodmain_controller.dart';
import 'package:get/get.dart';
import '../widget/Nearby_TabBar.dart';
import '../widget/bestpartner_bottomsheet.dart';
import '../widget/sales_tabbar.dart';
import '../widget/searchbar.dart';

class FoodMainScreen extends GetView<FoodMainController> {
  static String pageId = '/screenFoodMain';
  FoodMainScreen({Key? key}) : super(key: key);
  final controller = Get.put(FoodMainController());

  @override
  Widget build(BuildContext context) {
    // String? topModalData;
    final FoodMainController _tabx = Get.put(FoodMainController());
    return Scaffold(
      backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DraggableScrollableSheet(
                        initialChildSize: 0.3,
                          minChildSize: 0.13,
                          maxChildSize: 0.9,
                          expand: true,
                          controller: DraggableScrollableController(),
                          snap: true,
                          snapAnimationDuration: Duration(seconds: 2),
                          builder: (context, ScrollController scrollController) {
                          return ListView.builder(
                              controller: scrollController,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Text("data");
                              },);
                          },),
                      TextFormField(
                        onFieldSubmitted: (value) {
                          Get.to(() => SearchScreen(searchText: controller.controllerForSearch.text,));
                          },
                        controller: controller.controllerForSearch,
                        cursorColor: Colors.grey,
                        style: const TextStyle(fontSize: 15),
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.location_on,color: Colors.grey,),
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: 'Search on Coody',
                          hintStyle: const TextStyle(color: Colors.grey,fontSize: 18),
                          labelStyle: const TextStyle(color: Colors.grey,fontSize: 28),
                          contentPadding: const EdgeInsets.only(
                              left: 24.0, bottom: 18.0, top: 18.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.battery_0_bar,size: 30,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.02),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Delivery to",style: TextStyle(color: Colors.orangeAccent,fontSize: 18),),
                              Text("1014 Prospect Vall",style: TextStyle(fontSize: 18))
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1),
                          GestureDetector(
                            onTap: () { },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.3,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.grey[300]),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.ac_unit_outlined),
                                  Text("Filter",style: TextStyle(fontSize: 18),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
              height: MediaQuery.of(context).size.height*0.27,
              margin: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Category",style: TextStyle(fontSize: 18),),
                      Text("See All",style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: controller.foodlist.length,
                        itemBuilder: (context,item) {
                          return Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.14,
                                width: MediaQuery.of(context).size.width * 0.3,
                                margin: const EdgeInsets.only(left: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.orange[50]),
                                child: Image(image: AssetImage(controller.foodlist[item].image),height: 70),
                              ),
                              Text(controller.foodlist[item].name),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
              height: MediaQuery.of(context).size.height*0.35,
              width: MediaQuery.of(context).size.width*0.9,
              margin: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Best Partners",style: TextStyle(fontSize: 18),),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              elevation: 0,
                              builder: (context){
                                return BestPartnerBottomSheet();
                              }
                          );
                        },
                        child: const Text("See All",style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                  const Divider(),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: controller.foodpartner.length,
                            itemBuilder: (context,item) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,bottom: 0.5),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image(
                                        image: NetworkImage(controller.foodpartner[item].imagepartner),height: MediaQuery.of(context).size.height*0.15,fit: BoxFit.fill,),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(controller.foodpartner[item].namepartner,style: const TextStyle(fontSize: 20),),
                                      const Icon(Icons.check_circle,color: Colors.green,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(controller.foodpartner[item].openclosepartener,style: const TextStyle(color: Colors.green,fontSize: 18),),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                                      Text(controller.foodpartner[item].addresspartner),
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
                                            Text(controller.foodpartner[item].ratingpartner,style: const TextStyle(color: Colors.white,fontSize: 15),),
                                          ],
                                        ),
                                      ),
                                      Text("  ${controller.foodpartner[item].kmpartner}km"),
                                      const Text("  Free shipping"),
                                    ],
                                  ),
                                ],
                              );
                            }
                        ),
                      )
                  ),
                ],
              ),
            ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
                height: MediaQuery.of(context).size.height*1.08,
                width: MediaQuery.of(context).size.width*0.9,
                margin: const EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Colors.white),
                child:  Column(
                  children: [
                    DefaultTabController(length: 4, child: TabBar(
                      controller: _tabx.controller,
                      tabs: _tabx.myTabs,
                    )),
                    Expanded(
                      flex: 2,
                      child: TabBarView(
                      controller: _tabx.controller,
                      children: [
                        Nearby(),
                        Sales(),
                        Nearby(),
                        Sales(),
                      ],
                      ),
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
    );
  }
}
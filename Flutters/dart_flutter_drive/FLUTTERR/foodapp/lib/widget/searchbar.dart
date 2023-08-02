import 'package:flutter/material.dart';
import 'package:foodapp/get/controller/foodmain_controller.dart';
import 'package:foodapp/screen/product_detail_screen.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  final String searchText;

  SearchScreen({Key? key, required this.searchText}) : super(key: key);
  final controller = Get.find<FoodMainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                TextFormField(
                  controller: controller.controllerForSearch,
                  cursorColor: Colors.grey,
                  style: const TextStyle(fontSize: 15),
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_on,color: Colors.grey,),
                    filled: true,
                    fillColor: Colors.white,
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
                GestureDetector(
                  onTap: () {
                    Get.to(() => ProductDetailScreen());
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.searchlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 5,),
                        child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAlias,
                            elevation: 2,
                            shadowColor: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.11,
                                  width: MediaQuery.of(context).size.width*0.2,
                                  child: Image(image: AssetImage(controller.searchlist[index].image),fit: BoxFit.cover),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(controller.searchlist[index].product),
                                    Row(
                                      children: [
                                        Text(controller.searchlist[index].usd),
                                        Text("Food"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                                Icon(Icons.star,color: Colors.orangeAccent,),
                              ],
                            )
                        ),
                      );
                    },),
                )
              ],
            ),
          )
      ),
    );
  }
}

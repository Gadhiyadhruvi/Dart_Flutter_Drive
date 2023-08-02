import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller/foodmain_controller.dart';

class Sales extends StatelessWidget {
  Sales({Key? key}) : super(key: key);
  final controller = Get.find<FoodMainController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.69,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0.0),
          itemCount: controller.foodtabsales.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {},
                child:
                Card(
                  semanticContainer: true,
                  // clipBehavior: Clip.antiAlias,
                  elevation: 1,
                  shadowColor: Colors.black,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.22,
                        width: MediaQuery.of(context).size.width*0.45,
                        child: Image.network(controller.foodtabsales[index].imagenearby,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(controller.foodtabsales[index].product1nearby),
                          ),
                          Icon(Icons.adb_sharp,color: Colors.green,),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(controller.foodtabsales[index].openclosenearby),
                          ),
                          Text(controller.foodtabsales[index].product2nearby)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

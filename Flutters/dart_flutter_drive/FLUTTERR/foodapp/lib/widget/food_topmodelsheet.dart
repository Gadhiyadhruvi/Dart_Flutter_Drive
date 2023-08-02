import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get/controller.dart';

class FoodTopModelsheet extends StatelessWidget {
  FoodTopModelsheet({Key? key}) : super(key: key);
  // final ScrollController listViewController = new ScrollController();

  // final controller = Get.find<FoodMainController>();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: OutlinedButton(
              child: Column(
                children: [
                  DraggableScrollableSheet(
                    minChildSize: 0.5,
                      maxChildSize: 0.7,
                      initialChildSize: 2.5,
                      builder: (context, scrollController) {
                        return Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blue,
                        );
                      },),
                  /*ListView.builder(
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
                                      }
                                  ),*/
                  Text("ghv"),
                ],
              ),
              onPressed: () {
                Navigator.of(context).pop();
                },
            ),
          ),
      ),
    );
  }
}

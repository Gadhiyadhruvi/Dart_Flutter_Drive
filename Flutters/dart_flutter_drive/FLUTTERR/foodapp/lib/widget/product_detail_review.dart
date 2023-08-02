import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../get/controller/product_detail_controller.dart';

class ProductDetailReview extends StatelessWidget {
  ProductDetailReview({Key? key}) : super(key: key);

  final controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            width: MediaQuery.of(context).size.width*0.2,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(45),color: Colors.orange[100]),
                            child: const CircleAvatar(
                                backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._0r6E75jkqUJRKmPcVSPwAHaFf&pid=Api&P=0&h=180")
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Eleanor Summers"),
                              Obx(() => _ratingBar(controller.ratingBarMode.value),)
                            ],
                          ),
                          const Text("Today, 16.40"),
                        ],
                      ),
                      const Text("Wht can i say it's fast food, it's Burger King No different to any of the other burger kings, nice with adequate seating."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.favorite,color: Colors.orange,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          const Text("68 likes",style: TextStyle(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.6,),
                          Icon(Icons.flag,color: Colors.grey[400],)
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                  );
                  },
              ),
        );
  }

  Widget _ratingBar(int mode) {
    return RatingBar.builder(
          minRating: 1,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 20.0,
          itemBuilder: (context, _) => Icon(
            controller.selectedIcon ?? Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
              rating = rating;
              },
        );
  }
}
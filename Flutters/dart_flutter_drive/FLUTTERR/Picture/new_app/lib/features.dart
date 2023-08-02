import 'dart:convert';
import 'package:flutter/material.dart';
import 'Cart.dart';
import 'package:http/http.dart' as http;
import 'Favorite.dart';
import 'Model/data/home/feature_data.dart';
import 'product_Detail_screen.dart';
import 'server_url/server_url.dart';

class Feature extends StatefulWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  List<ProductList> productList = [];
  List<FeatureListData> featureApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getDataList();

    super.initState();
  }

  Future<List<FeatureListData>> getDataList() async {
    Map data = {
      'user_id':"3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}features");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      featureApi = rest.map<FeatureListData>((e) => FeatureListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("featureApi");
      print(response.body);
    }
    return featureApi;
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Features"),
          actions:<Widget>[
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
              },
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
            }, icon: const Icon(Icons.shopping_cart,color: Colors.white,))
          ],
        ),
        body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0.0),
            itemCount: featureApi.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(4),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: featureApi[index].id,)),
                    );
                  },
                  child:
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAlias,
                    elevation: 2,
                    shadowColor: Colors.black,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.20,
                          width: MediaQuery.of(context).size.width*0.45,
                          child: Image.network(featureApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.20),
                        ),
                        const SizedBox(height: 4,),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text(featureApi[index].product_name),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5,),
                          child: Text(featureApi[index].brand_name??"".toString(),style: const TextStyle(color: Colors.grey),),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text("${featureApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5,),
                              child: const Icon(Icons.currency_rupee,color: Colors.blue,size: 17,),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(featureApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text('\$${featureApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: InkWell(
                                onTap: (){
                                  // if(productList[index].isAddedToCart == false){
                                  //   setState(() {
                                  //     productList[index].isAddedToCart = true;
                                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
                                  //   });
                                  // }
                                  // else{
                                  //   setState(() {
                                  //     productList[index].isAddedToCart = false;
                                  //   });
                                  // }
                                },
                                // child: Icon(Icons.shopping_cart,color: productList[index].isAddedToCart == true? Colors.blue : Colors.grey,size: 23,),
                                child: const Icon(Icons.shopping_cart,color: Colors.grey,size: 23,),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}

class ProductList{
  final String image;
  final String title;
  final String BrandName;
  final String price;
  final String discountPrice;
  final String discount;
  final String school;
  final String boardName;
  final String mediumName;
  final String standardName;
  final String subjectName;
  bool isAddedToCart = false;

  ProductList({
    required this.image,
    required this.title,
    required this.BrandName,
    required this.price,
    required this.discountPrice,
    required this.discount,
    required this.school,
    required this.boardName,
    required this.mediumName,
    required this.standardName,
    required this.subjectName
  });
}

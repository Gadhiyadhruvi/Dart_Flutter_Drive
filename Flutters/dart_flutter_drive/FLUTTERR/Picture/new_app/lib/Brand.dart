import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/allproduct_data.dart';
import 'Model/data/home/brand_data.dart';
import 'server_url/server_url.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  int selectedIndex = 0;
  List<AllProductListData> allproductApi = [];
  List<ProductList> productList = [];
  List<BrandListData> brandApi = [];

  @override
  void initState() {
    getBrandList();
    getDataList();
    super.initState();
  }
  Future<List<BrandListData>> getBrandList() async{
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}brands");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      brandApi = rest.map<BrandListData>((e) => BrandListData.fromJsonMap(e)).toList();
      setState(() {
        //_isLoading = false;
      });
      print("brandApi");
      print(response.body);
    }
    return brandApi;
  }

  Future<List<AllProductListData>> getDataList() async {
    Map data = {
      'user_id':"3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}allProduct");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      allproductApi = rest.map<AllProductListData>((e) => AllProductListData.fromJsonMap(e)).toList();
      setState(() {
       // _isLoading = false;
      });
      print("allproductApi");
      print(response.body);
    }
    return allproductApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brand"),
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
      body: Column(
        children:[
          Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: brandApi.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  const EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {
                        // if(categoriesList[index].isAddedToCart == false){
                        //   setState(() {
                        //     categoriesList[index].isAddedToCart = true;
                        //   });
                        // }
                        // else {
                        //   setState(() {
                        //     categoriesList[index].isAddedToCart = false;
                        //   });
                        // }
                        },
                        child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border(left: BorderSide(color: Colors.blue.shade700),right: BorderSide(color: Colors.blue.shade700),top: BorderSide(color: Colors.blue.shade700),bottom: BorderSide(color: Colors.blue.shade700)),
                            borderRadius: BorderRadius.circular(5),color: Colors.white,),
                        child: Padding(
                          padding:  const EdgeInsets.all(6),
                          child: Text(
                            brandApi[index].name,style: const TextStyle(fontSize: 18,color:  Colors.blue,),
                          ),
                        ),
                      )
                    ),
                  );
                },
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
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
                itemCount: allproductApi.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductDetailScreen(productId: allproductApi[index].id,)),
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
                              height: MediaQuery.of(context).size.height*0.22,
                              width: MediaQuery.of(context).size.width*0.45,
                              child: Image.network(allproductApi[index].product_image,fit: BoxFit.fill,width:MediaQuery.of(context).size.width*0.55,height:MediaQuery.of(context).size.height*0.22),
                            ),
                            const SizedBox(height: 6,),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Text(allproductApi[index].product_name),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5,),
                              child: Text(allproductApi[index].brand_name,style: const TextStyle(color: Colors.grey),),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Text("${allproductApi[index].discount}% Off",style: const TextStyle(color: Colors.green,fontSize: 12),),
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
                                  child: Text(allproductApi[index].price,style: const TextStyle(color: Colors.blue,fontSize: 15),),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text('\$${allproductApi[index].discount_price}',style: const TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,fontSize: 12),),
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
            ),
          )
        ],
      ),
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

class CategoriesList {
  final String product;
  final String brand;
  final String feature;
  bool isAddedToCart = false;

  CategoriesList ({
    required this.product,
    required this.brand,
    required this.feature
  });
}

class CartList{
  final String image;
  final String subName;
  final String book;
  final String price;

  CartList({
    required this.image,
    required this.subName,
    required this.book,
    required this.price
  });
}
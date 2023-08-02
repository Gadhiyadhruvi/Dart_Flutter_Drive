import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Model/data/home/allproduct_data.dart';
import 'server_url/server_url.dart';

class Add_More extends StatefulWidget {
  const Add_More({Key? key}) : super(key: key);

  @override
  State<Add_More> createState() => _Add_MoreState();
}

class _Add_MoreState extends State<Add_More> {
  List<ProductList> productList = [];
  bool _isLoading = false;
  final String url = "";
  List<AllProductListData> allproductApi = [];

  @override
  void initState() {
    _isLoading = true;
    getDataList();

    productList.add(ProductList(title: "English", price: "212", discountPrice: "235", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.RixDGRn511lPDg-5npfZPwHaJk&pid=Api&P=0', BrandName: 'Nursery', school: 'Delhi Public School, Bopal', boardName: 'Gujarat Board', mediumName: 'Gujarati', standardName: '2', subjectName: 'English',));
    productList.add(ProductList(title: "Science", price: "100", discountPrice: "125", discount: "2", image: 'https://tse4.mm.bing.net/th?id=OIP.OUbBjDJU3SUVps8BS7zsdAHaHa&pid=Api&P=0', BrandName: '1', school: 'Udgam School For Children, Thaltej',  boardName: 'CBSC', mediumName: 'English', standardName: '5', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "English Grammar", price: "200", discountPrice: "235", discount: "15", image: 'https://tse1.mm.bing.net/th?id=OIP.59FDYCnsskmxXdC8KoIbDAHaJl&pid=Api&P=0', BrandName: '1', school: 'Vedant International School, Isanpur',  boardName: 'Gujarat', mediumName: 'Hindi', standardName: '1', subjectName: 'Mathematices',));
    productList.add(ProductList(title: "Gujarati", price: "150", discountPrice: "80", discount: "8", image: 'https://2.bp.blogspot.com/--NACPs3p9I0/WPG_cC4NQaI/AAAAAAAAYJE/Q-cgrW0brvcQstSP8WIkgiXmpf7D-5P5gCEw/s1600/1.jpg', BrandName: '6', school: 'Podar International School, Chandkheda', boardName: 'ICSC', mediumName: 'English', standardName: '8', subjectName: 'Hindi',));
    productList.add(ProductList(title: "Mathematics", price: "220", discountPrice: "120", discount: "10", image: 'https://tse4.mm.bing.net/th?id=OIP.LgFvGN8I4LLmR7JB0jXQ8QHaHa&pid=Api&P=0', BrandName: '5', school: 'Adani Vidya Mandir, Makarba',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '10', subjectName: 'Social Science',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "18", image: 'https://tse2.mm.bing.net/th?id=OIP._idKDk6rskubf16dm8p3LAHaJa&pid=Api&P=0', BrandName: '1', school: 'Anand Niketan, Maninagar', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Science',));
    productList.add(ProductList(title: "Computer", price: "100", discountPrice: "80", discount: "2", image: 'https://uploads-ssl.webflow.com/5f5cf4627107791c0412287b/60c9bfdd9364ce105f5c12d0_Computer%20Book%20-8-p-1080.jpeg', BrandName: '8', school: 'Calorx Public School, Ghatlodia',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'English Grammer',));
    productList.add(ProductList(title: "Science", price: "160", discountPrice: "120", discount: "20", image: 'https://tse3.mm.bing.net/th?id=OIP.r1T31UTwUS-7cFLOYnJEpQAAAA&pid=Api&P=0', BrandName: '10', school: 'Cosmos Castle International School, S G Road',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Computer',));
    productList.add(ProductList(title: "Social Science", price: "250", discountPrice: "200", discount: "5", image: 'https://tse2.mm.bing.net/th?id=OIP.925o4UY1WdELT1MuNZZWDwHaHa&pid=Api&P=0', BrandName: '9', school: 'Divine Child International School, Adalaj',  boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Gujarati',));
    productList.add(ProductList(title: "Hindi", price: "90", discountPrice: "50", discount: "8", image: 'https://isteam.wsimg.com/ip/a68ccc00-d53d-11e5-892b-14feb5d41b49/ols/17065_original/:/rs=w:600,h:600', BrandName: '4', school: 'Nirman High School, Vastrapur', boardName: 'Gujarat', mediumName: 'Gujarati', standardName: '2', subjectName: 'Mathematices',));

    super.initState();
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
        _isLoading = false;
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
          title: const Text("Products"),
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
        body: SingleChildScrollView(
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
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'package:http/http.dart' as http;
import 'Model/data/category/board_category_list_data.dart';
import 'Model/data/category/medium_category_list_data.dart';
import 'Model/data/category/school_category_list_data.dart';
import 'Model/data/category/standerd_category_list_data.dart';
import 'Model/data/home/allproduct_data.dart';
import 'server_url/server_url.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategoryList> categoryList = [];
  List<ProductList> productList = [];
  List<StanderdCategoryListData> standerdcategoryApi = [];
  List<BoardCategoryListData> boardcategoryApi = [];
  List<MediumCategoryListData> mediumcategoryApi = [];
  List<SchoolCategoryListData> schoolcategoryApi = [];
  List<AllProductListData> allproductApi = [];
  bool isSelected = false;
  bool isConfirmed = false;
  bool isdone = false;
  bool isfinal = false;
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getDataList();
    getStanderdCategoryList();
    getSchoolCategoryList();
    getBoardCategoryList();
    getMediumCategoryList();

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

  Future<List<StanderdCategoryListData>> getStanderdCategoryList() async{
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}standarCategory");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      standerdcategoryApi = rest.map<StanderdCategoryListData>((e) => StanderdCategoryListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("standerdcategoryApi");
      print(response.body);
    }
    return standerdcategoryApi;
  }

  Future<List<BoardCategoryListData>> getBoardCategoryList() async{
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}boardCategory");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      boardcategoryApi = rest.map<BoardCategoryListData>((e) => BoardCategoryListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("boardcategoryApi");
      print(response.body);
    }
    return boardcategoryApi;
  }

  Future<List<MediumCategoryListData>> getMediumCategoryList() async{
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}mediumCategory");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      mediumcategoryApi = rest.map<MediumCategoryListData>((e) => MediumCategoryListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("mediumcategoryApi");
      print(response.body);
    }
    return mediumcategoryApi;
  }

  Future<List<SchoolCategoryListData>> getSchoolCategoryList() async{
    Map data ={};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}schoolCategory");
    var response = await http.post(url,body: data);
    if(response.statusCode == 200){
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      schoolcategoryApi = rest.map<SchoolCategoryListData>((e) => SchoolCategoryListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("schoolcategoryApi");
      print(response.body);
    }
    return schoolcategoryApi;
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
        actions:<Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),)); },
          ),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
              },
              icon: const Icon(Icons.shopping_cart,color: Colors.white,))
        ],
      ),
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10,top: 5),
              child: const Text(
                'School',
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: schoolcategoryApi.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isSelected = true;
                          });
                        },
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.5,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 5),
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                                        child: Image.network(schoolcategoryApi[index].image,fit: BoxFit.cover,height: MediaQuery.of(context).size.height*0.16,)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(schoolcategoryApi[index].name,style: const TextStyle(fontSize: 17)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            isSelected == true ? const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 5, 20),
              child: Text(
                'Education Board',
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),
              ),
            ) : Container(),
            isSelected == true ? SizedBox(
              height: 250,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: boardcategoryApi.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            isConfirmed = true;
                          });
                        },
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            height: MediaQuery.of(context).size.height/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //ShapeDecoration.fromBoxDecoration(BoxDecoration(borderRadius: BorderRadius.circular(10))),
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                                      child: Image.network(boardcategoryApi[index].image)),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(boardcategoryApi[index].name,style: const TextStyle(fontSize: 17)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ) : Container(),
            isConfirmed == true ? const Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 5, 20),
                child: Text('Medium',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
            ): Container(),
            isConfirmed == true ? Center(
              child: InkWell(
                onTap: (){
                  setState(() {
                    isdone = true;
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),),
                    child: const Text("GUJARATI",style: TextStyle(fontSize: 17,color: Colors.black))),
              ),
            ) : Container(),
            isdone == true ? const Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 5, 20),
                child: Text('Standred',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
            ): Container(),
            isdone == true ? SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width*1,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: standerdcategoryApi.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                isfinal = true;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width*0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(standerdcategoryApi[index].name,style: const TextStyle(fontSize: 17)),
                              ),
                            ),
                          ));
                    })) : Container(),
            isfinal == true ? Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Container(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context){
                          return GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              color: const Color.fromRGBO(0, 0, 0, 0.001),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: DraggableScrollableSheet(
                                  initialChildSize: 0.5,
                                  maxChildSize: 0.75,
                                  builder: (_, controller){
                                    return Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                                            child: const Text(" Products:",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1),),
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
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
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        }
                    );
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 20),
                  ),
                ),
              ),
            ) : Container(),
          ],
        ),
      ),
    );
  }
}

class CategoryList {
  final String standered;
  final String sname;

  CategoryList ( {
    required this.standered,
    required this.sname
  });
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

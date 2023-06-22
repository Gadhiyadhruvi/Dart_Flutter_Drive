// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:new_app/product_Detail_screen.dart';
import 'Add_More.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'package:http/http.dart' as http;
import 'Model/data/category/board_category_list_data.dart';
import 'Model/data/category/medium_category_list_data.dart';
import 'Model/data/category/school_category_list_data.dart';
import 'Model/data/category/standerd_category_list_data.dart';
import 'Model/data/home/allproduct_data.dart';
import 'Model/data/home/category_wish_product_list_data.dart';
import 'Model/models/cartlist/home_count_model.dart';
import 'categorywiselist.dart';
import 'server_url/server_url.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int schoolId = 0;
  int boardId = 0;
  int mediumId = 0;
  int standardId = 0;
  List<StanderdCategoryListData> standerdcategoryApi = [];
  List<BoardCategoryListData> boardcategoryApi = [];
  List<MediumCategoryListData> mediumcategoryApi = [];
  List<SchoolCategoryListData> schoolcategoryApi = [];
  HomeCountModel? homeCountApi;

  bool isSelected = false;
  bool isConfirmed = false;
  bool isdone = false;
  bool isfinal = false;
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getStanderdCategoryList();
    getSchoolCategoryList();
    getBoardCategoryList();
    getMediumCategoryList();
    HomeCount();
    super.initState();
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

  Future<void> HomeCount() async {
    Map data = {
      'user_id': "3",
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}homeCount");
    var response = await http.post(url,body: data);
    homeCountApi = HomeCountModel.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      if(homeCountApi!.status == 200) {
        setState(() {
          _isLoading = false;
        });
      }else {
        setState(() {
          _isLoading = false;
        });
      }
    }else {
      setState(() {
        _isLoading = false;
      });
    }
    print("Response");
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
        actions:<Widget>[
          Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite(),));
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 17,right: 6),
                  child: const Icon(Icons.favorite,color: Colors.white,),
                ),
              ),
              Positioned(
                  left: 13,
                  top: 2,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Text("${homeCountApi?.homeCountData.favoriteCount}"),
                  ))
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Stack(
            children:  [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart(),));
                  });
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 17,right: 14),
                    child: const Icon(Icons.shopping_cart,color: Colors.white,)),
              ),
              Positioned(
                  left: 17,
                  top: 2,
                  child:Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                    child: Text(
                        "${homeCountApi?.homeCountData.cartCount}"
                    ),
                  ))
            ],
          )
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
              height: MediaQuery.of(context).size.height*0.32,
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
                            schoolId = schoolcategoryApi[index].id;
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
              height: MediaQuery.of(context).size.height*0.32,
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
                            boardId = boardcategoryApi[index].id;
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
            isConfirmed == true ? SizedBox(
              height: MediaQuery.of(context).size.height*0.09,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: mediumcategoryApi.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isdone = true;
                          mediumId = mediumcategoryApi[index].id;
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
                          child: Text(mediumcategoryApi[index].name,style: const TextStyle(fontSize: 17,color: Colors.black))),
                    ),
                  );
                },
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
                                standardId = standerdcategoryApi[index].id;
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryWise(schoolId: schoolId, boardId: boardId, mediumId: mediumId, standardId: standardId,),));
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
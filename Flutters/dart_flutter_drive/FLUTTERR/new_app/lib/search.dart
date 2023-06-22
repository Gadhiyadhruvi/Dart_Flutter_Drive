import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'Model/data/home/search_data.dart';
import 'Model/models/home/search_model.dart';
import 'server_url/server_url.dart';

class Search extends StatefulWidget {
  final String searchText;
  const Search({Key? key, required this.searchText}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<SearchDataListData> searchListApi = [];
  List<SearchDataListModel> searchDataListModelApi = [];
  //late SearchDataListData searchDataListData;

  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    // getSearchModelData();
    getProductData();
    super.initState();
  }

  // Future<List<SearchDataListModel>> getSearchModelData() async {
  //   Map data = {
  //     'keyword' : "T",
  //     'page_size' : "10",
  //     'page_number' : "1",
  //     'user_id' : "3"
  //   };
  //   final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}search");
  //   var response = await http.post(url, body: data);
  //   if(response.statusCode == 200) {
  //     var data = json.decode(response.body);
  //     var rest = data["data"] as List;
  //     searchDataListModelApi = rest.map<SearchDataListModel>((e) => SearchDataListModel.fromJsonMap(e)).toList();
  //     setState(() {
  //       _isLoading = false;
  //     });
  //     print("searchDataListModelApi");
  //     print(response.body);
  //   }
  //   return searchDataListModelApi;
  // }
  Future<List<SearchDataListData>> getProductData() async {
    Map data = {
      'keyword' : widget.searchText,
      'page_size' : "10",
      'page_number' : "1",
      'user_id' : "3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}search");
    var response = await http.post(url, body: data);
    //searchDataListData = SearchDataListData.fromJsonMap(json.decode(response.body.toString()));
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"];
      var result = rest["productData"] as List;
      searchListApi = result.map<SearchDataListData>((e) => SearchDataListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("searchListApi");
      print(response.body);
    }
    return searchListApi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading ? const Center(child: CircularProgressIndicator(),) :
      SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: searchListApi.length,
            itemBuilder: (context, index) {
              return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAlias,
                elevation: 2,
                shadowColor: Colors.black,
                child: Text(searchListApi[index].product_name),
              );
            },)
      ),
    );
  }
}

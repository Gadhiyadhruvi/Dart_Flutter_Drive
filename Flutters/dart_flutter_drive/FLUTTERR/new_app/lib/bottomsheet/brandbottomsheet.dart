import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Brand.dart';
import '../Model/data/home/brand_data.dart';
import '../server_url/server_url.dart';

class BrandBottomSheet extends StatefulWidget {
  const BrandBottomSheet({Key? key}) : super(key: key);

  @override
  State<BrandBottomSheet> createState() => _BrandBottomSheetState();
}

class _BrandBottomSheetState extends State<BrandBottomSheet> {
  List<BrandListData> brandApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getBrandList();
    super.initState();
  }

  Future<List<BrandListData>> getBrandList() async {
    Map data = {};
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}brands");
    var response = await http.post(url, body: data);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      brandApi =
          rest.map<BrandListData>((e) => BrandListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("brandApi");
      print(response.body);
    }
    return brandApi;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        color: const Color.fromRGBO(0, 0, 0, 0.001),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.75,
            builder: (_, controller) {
              return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                      const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: const Text(
                        "Select Brand:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: brandApi.length,
                          controller: controller,
                          padding: const EdgeInsets.only(bottom: 10),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                         Brand(brandId: brandApi[index].id,)));
                              },
                              child: Card(
                                elevation: 1.2,
                                shadowColor: Colors.black45,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  height:
                                  MediaQuery.of(context).size.height * 0.04,
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 5),
                                  child: Text(brandApi[index].name ,
                                      style: const TextStyle(fontSize: 15)),
                                ),
                              ),
                            );
                          }),
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
}
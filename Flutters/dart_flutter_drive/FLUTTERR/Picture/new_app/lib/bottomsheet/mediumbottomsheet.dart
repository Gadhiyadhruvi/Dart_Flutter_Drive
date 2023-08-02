import 'dart:convert';
import 'package:flutter/material.dart';
import '../Model/data/home/medium_data.dart';
import 'package:http/http.dart' as http;
import '../server_url/server_url.dart';
import 'standerdbottomsheet.dart';

class MediumBottomSheet extends StatefulWidget {
  const MediumBottomSheet({Key? key}) : super(key: key);

  @override
  State<MediumBottomSheet> createState() => _MediumBottomSheetState();
}

class _MediumBottomSheetState extends State<MediumBottomSheet> {
  List<MediumListData> mediumApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getMediumList();
    super.initState();
  }

  Future<List<MediumListData>> getMediumList() async {
    Map data = {
      'board_id':"1"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}medium");
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      mediumApi = rest.map<MediumListData>((e) => MediumListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("mediumApi");
      print(response.body);
    }
    return mediumApi;
  }

  @override
  Widget build(BuildContext context) {
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
          child: Container(
            color: const Color.fromRGBO(0, 0, 0, 0.001),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: DraggableScrollableSheet(
                initialChildSize: 0.3,
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
                          child: const Text("Select Medium:",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 15),),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: mediumApi.length,
                              controller: controller,
                              padding: const EdgeInsets.only(bottom: 10),
                              shrinkWrap: true,
                              itemBuilder: (context,index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        isScrollControlled: true,
                                        context: context,
                                        builder: (context){
                                          return const StanderdBottomSheet();
                                        }
                                    );
                                  },
                                  child: Card(
                                    elevation: 1.2,
                                    shadowColor: Colors.black45,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      height: MediaQuery.of(context).size.height*0.04,
                                      margin: const EdgeInsets.only(left: 10,bottom: 5),
                                      child: Text(mediumApi[index].name,style: const TextStyle(fontSize: 15)),
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

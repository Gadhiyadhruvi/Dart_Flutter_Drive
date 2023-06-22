import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/data/home/school_data.dart';
import '../server_url/server_url.dart';
import 'boardbottomsheet.dart';

class SchoolBottomSheet extends StatefulWidget {
  const SchoolBottomSheet({Key? key}) : super(key: key);

  @override
  State<SchoolBottomSheet> createState() => _SchoolBottomSheetState();
}

class _SchoolBottomSheetState extends State<SchoolBottomSheet> {
  List<SchoolListData> schoolApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getSchoolList();

    super.initState();
  }

  Future<List<SchoolListData>> getSchoolList() async {
    Map data = {

    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}school");
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      schoolApi = rest.map<SchoolListData>((e) => SchoolListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("schoolApi");
      print(response.body);
    }
    return schoolApi;
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
                      child: const Text("Select School:",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1),),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: schoolApi.length,
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
                                      return const BoardBottomSheet();
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
                                  child: Text(schoolApi[index].name,style: const TextStyle(fontSize: 15),),
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
    );
  }
}
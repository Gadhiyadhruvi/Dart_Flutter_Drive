import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Add_More.dart';
import '../Model/data/home/standerd_data.dart';
import '../server_url/server_url.dart';


class StanderdBottomSheet extends StatefulWidget {
  const StanderdBottomSheet({Key? key}) : super(key: key);

  @override
  State<StanderdBottomSheet> createState() => _StanderdBottomSheetState();
}

class _StanderdBottomSheetState extends State<StanderdBottomSheet> {
  List<StanderdListData> standerdApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getStanderdList();
    super.initState();
  }

  Future<List<StanderdListData>> getStanderdList() async {
    Map data = {
      'medium_id' : "1"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}standerd");
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      standerdApi = rest.map<StanderdListData>((e) => StanderdListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("standerdApi");
      print(response.body);
    }
    return standerdApi;
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
                      child: const Text("Select Standred:",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 15),),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: standerdApi.length,
                          controller: controller,
                          padding: const EdgeInsets.only(bottom: 10),
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  Navigator.pop(context);
                                });
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Add_More(),));
                              },
                              child: Card(
                                elevation: 1.2,
                                shadowColor: Colors.black45,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  height: MediaQuery.of(context).size.height*0.04,
                                  margin: const EdgeInsets.only(left: 10,bottom: 5),
                                  child: Text(standerdApi[index].name,style: const TextStyle(fontSize: 15)),
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

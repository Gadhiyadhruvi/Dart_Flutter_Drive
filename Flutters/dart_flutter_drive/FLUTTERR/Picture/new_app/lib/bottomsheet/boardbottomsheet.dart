import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Model/data/home/board_data.dart';
import '../server_url/server_url.dart';
import 'mediumbottomsheet.dart';

class BoardBottomSheet extends StatefulWidget {
  const BoardBottomSheet({Key? key}) : super(key: key);

  @override
  State<BoardBottomSheet> createState() => _BoardBottomSheetState();
}

class _BoardBottomSheetState extends State<BoardBottomSheet> {
  List<BoardListData> boardApi = [];
  bool _isLoading = false;
  final String url = "";

  @override
  void initState() {
    _isLoading = true;
    getBoardList();
    super.initState();
  }

  Future<List<BoardListData>> getBoardList() async {
    Map data = {
      'school_id' : "3"
    };
    final Uri url = Uri.parse("${SchoolBaseUrlL.school_base_url}board");
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["data"] as List;
      boardApi =
          rest.map<BoardListData>((e) => BoardListData.fromJsonMap(e)).toList();
      setState(() {
        _isLoading = false;
      });
      print("boardApi");
      print(response.body);
    }
    return boardApi;
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
                      child: const Text("Select Board:",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 15),),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: boardApi.length,
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
                                      return const MediumBottomSheet();
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
                                  child: Text(boardApi[index].name,style: const TextStyle(fontSize: 15)),
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

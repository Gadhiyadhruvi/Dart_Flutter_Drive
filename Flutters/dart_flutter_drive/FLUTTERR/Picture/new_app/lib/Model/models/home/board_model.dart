
// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/home/board_data.dart';

class BoardListModel {
  final int status;
  final List<BoardListData> boardListData;
  final String message;

  BoardListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        boardListData = List<BoardListData>.from(
            map["data"].map((it) => BoardListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = boardListData != null
        ? boardListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}
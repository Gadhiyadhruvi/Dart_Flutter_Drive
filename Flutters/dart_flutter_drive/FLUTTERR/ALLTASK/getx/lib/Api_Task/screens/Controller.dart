import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Models/welcome_model.dart';

class DataController extends GetxController {
  Images? data;
   var isDataLoading = false.obs;

   @override
   Future<void> onInit() async {
     super.onInit();
     getApi();
   }

  getApi() async {
    try{
       isDataLoading.value = true;
      http.Response response = await http.get(
          Uri.parse('http://185.253.72.151/api/auth/getwelcomeimages'),
          // headers: {'app-id': '6218809df11d1d412af5bac4'}
      );
      if(response.statusCode == 200){
        var result = jsonDecode(response.body);
        data = Images.fromJson(result);
      }else{
        ///error
      }
    }catch(e){
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    }finally{
       isDataLoading.value=false;
    }
  }
}

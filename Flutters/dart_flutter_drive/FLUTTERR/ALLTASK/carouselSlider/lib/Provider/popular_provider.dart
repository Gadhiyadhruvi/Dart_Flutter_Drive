import 'package:get/get.dart';

class PopularProvider extends GetConnect {
  Future<List<dynamic>> getPopular() async {
    try {
      final response = await get("https://www.episodate.com/api/most-popular?page=1");
      if(response.status.hasError) {
        return Future.error(response.statusText as Object);
      }else {
        return response.body['tv_shows'];
      }
    }
    catch(e) {
      return Future.error(e.toString());
    }
  }
}
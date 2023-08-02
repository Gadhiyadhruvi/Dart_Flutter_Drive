import 'package:get/get.dart';
import 'package:split_pay_demo/models/data_menu_items.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedDropItem = MenuItems.items.elementAt(0).obs;

  void changeIndex(int index){
     selectedIndex.value = index;
  }

}
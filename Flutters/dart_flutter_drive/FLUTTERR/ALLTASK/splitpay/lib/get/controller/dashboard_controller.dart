import 'package:get/get.dart';
import '../../model/data_menu_item.dart';

class DashBoardController extends GetxController{
  var isSelectedindex = 0.obs;
  var selectedDropItem = MenuItems.items.elementAt(0).obs;

  void selectedIndex(int index) {
    isSelectedindex.value = index;
  }
}
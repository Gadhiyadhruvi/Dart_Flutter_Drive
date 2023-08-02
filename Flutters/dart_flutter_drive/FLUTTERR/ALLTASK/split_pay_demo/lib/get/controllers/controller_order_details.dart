import 'package:get/get.dart';
import 'package:split_pay_demo/models/model_order_status.dart';

class OrderDetailsController extends GetxController{
  var selectedDropItem = OrderStatusItem.items.elementAt(0).obs;

  var isCheckedItem =false.obs;
  var isCheckedSelectAll = false.obs;
  var isCheckedGeneralKitchen = false.obs;
  var isCheckedChineseKitchen = false.obs;
  var isCheckedAmericanKitchen = false.obs;
  var isCheckedSwedishKitchen = false.obs;
}
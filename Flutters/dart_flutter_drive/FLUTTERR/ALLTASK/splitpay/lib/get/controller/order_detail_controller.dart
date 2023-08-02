// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import '../../model/order_status.dart';

class OrderDetailController extends GetxController{

  final SelectedDropDown = OrderItem.items.elementAt(0).obs;

  var isSelected = false.obs;
  var isSelectedAll = false.obs;
  var isSelectedgeneralkichen = false.obs;
  var isSelectedchinesekichen = false.obs;
  var isSelectedamericankichen = false.obs;
  var isSelectedswedishkichen = false.obs;
}
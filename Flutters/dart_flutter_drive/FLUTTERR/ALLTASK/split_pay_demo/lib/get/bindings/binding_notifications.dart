import 'package:get/get.dart';
import 'package:split_pay_demo/get/controllers.dart';

class BindingNotifications implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}
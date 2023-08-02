import 'package:get/get.dart';
import 'package:split_pay_demo/get/bindings.dart';
import 'package:split_pay_demo/get/screens.dart';
class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: DashBoardScreen.pageId,
      page: () =>  DashBoardScreen(),
      binding: BindingDashboard(),
    ),
    GetPage(
      name: LoginScreen.pageId,
      page: () => LoginScreen(),
      binding: BindingLogin(),
    ),
    GetPage(
      name: RecentOrderScreen.pageId,
      page: () =>  RecentOrderScreen(),
      binding: BindingRecentOrders(),
    ),
    GetPage(
      name: NotificationsScreen.pageId,
      page: () => const NotificationsScreen(),
      binding: BindingNotifications(),
    ),
    GetPage(
      name: OrderDetailsScreen.pageId,
      page: () =>  OrderDetailsScreen(),
      binding: BindingOrderDetails(),
    ),
  ];
}
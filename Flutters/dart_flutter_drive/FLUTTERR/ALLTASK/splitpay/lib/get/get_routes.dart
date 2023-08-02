import 'package:get/get.dart';
import '../screens/dashboard_screen.dart';
import '../screens/login_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/order_detail_screen.dart';
import '../screens/recent_order_screen.dart';
import 'bindings/dashboard_binding.dart';
import 'bindings/login_binading.dart';
import 'bindings/notification_binding.dart';
import 'bindings/order_detail_binding.dart';
import 'bindings/recent_order_binding.dart';

   class AppPages {
     static final List<GetPage> page = [
       GetPage(
           name: DashBoardScreen.pageId,
           page: () => DashBoardScreen(),
           binding: DashBoardBinding(),
       ),
       GetPage(
           name: Login_Screen.pageId,
           page: () => Login_Screen(),
           binding: LoginBinding(),
       ),
       GetPage(
           name: Notification_Screen.pageId,
           page: () => Notification_Screen(),
           binding: NotificationBinding(),
       ),
       GetPage(
           name: OrderDetailScreen.pageId,
           page: () => OrderDetailScreen(),
           binding: OrderDetailBinding(),
       ),
       GetPage(
           name: RecentOrderScreen.pageId,
           page: () => RecentOrderScreen(),
           binding: RecentOrderBinding(),
       ),
     ];
   }
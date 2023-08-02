import 'package:foodapp/get/binding.dart';
import 'package:foodapp/get/controller.dart';
import 'package:foodapp/screen/bottomnav_screen.dart';
import 'package:foodapp/screen/category_screen.dart';
import 'package:foodapp/screen/confirm_order_screen.dart';
import 'package:foodapp/screen/foodmain_screen.dart';
import 'package:foodapp/screen/home_screen1.dart';
import 'package:foodapp/screen/login_screen.dart';
import 'package:foodapp/screen/order_delivery_detail_screen.dart';
import 'package:foodapp/screen/otp_screen.dart';
import 'package:foodapp/screen/payment_screen.dart';
import 'package:foodapp/screen/phonenumber_screen.dart';
import 'package:foodapp/screen/product_detail_screen.dart';
import 'package:foodapp/screen/profile_screen.dart';
import 'package:foodapp/screen/resetpassword_screen.dart';
import 'package:foodapp/screen/signup_screen.dart';
import 'package:foodapp/screen/splesh_screen.dart';
import 'package:get/get.dart';
import '../screen/home_screen2.dart';
import '../screen/home_screen3.dart';

class AppPages {
 static final List<GetPage> page = [
  GetPage(
      name: SpleshScreen.pageId,
      page: () => SpleshScreen(),
      binding: SpleshBinding(),
  ),
   GetPage(
       name: HomeScreen1.pageId,
       page: () => HomeScreen1(),
       binding: Home1Binding(),
   ),
   GetPage(
       name: HomeScreen2.pageId,
       page: () => HomeScreen2(),
       binding: Home2Binding(),
   ),
   GetPage(
       name: HomeScreen2.pageId,
       page: () => HomeScreen3(),
       binding: Home3Binding(),
   ),
   GetPage(
       name: LoginScreen.pageId,
       page: () => LoginScreen(),
       binding: LoginBinding(),
   ),
   GetPage(
       name: SignUpScreen.pageId,
       page: () => SignUpScreen(),
       binding: SignUpBinding(),
   ),
   GetPage(
       name: PhoneNumberScreen.pageId,
       page: () => PhoneNumberScreen(),
       binding: PhoneNumberBinding(),
   ),
   GetPage(
       name: OTPScreen.pageId,
       page: () => OTPScreen(),
       binding: OTPBinding(),
   ),
   GetPage(
       name: FoodMainScreen.pageId,
       page: () => FoodMainScreen(),
       binding: FoodMainBinding(),
   ),
   GetPage(
       name: BottomNavScreen.pageId,
       page: () => BottomNavScreen(),
       binding: BottomNavBinding(),
   ),
   GetPage(
       name: CategoryScreen.pageId,
       page: () => CategoryScreen(),
       binding: CategoryBinding(),
   ),
   GetPage(
       name: ConfirmOrderScreen.pageId,
       page: () => ConfirmOrderScreen(price: ''),
       binding: CategoryBinding(),
   ),
   GetPage(
       name: OrderDeliveryDetailScreen.pageId,
       page: () => OrderDeliveryDetailScreen(),
       binding: OrderDeliveryBinding(),
   ),
   GetPage(
       name: PaymentMethodScreen.pageId,
       page: () => PaymentMethodScreen(),
       binding: PaymentMethodBinding(),
   ),
   GetPage(
       name: ProductDetailScreen.pageId,
       page: () => ProductDetailScreen(),
       binding: ProductDetailBinding(),
   ),
   GetPage(
       name: ProfileScreen.pageId,
       page: () => ProfileScreen(),
       binding: ProfileBinding(),
   ),
   GetPage(
       name: ResetPassWordScreen.pageId,
       page: () => ResetPassWordScreen(),
       binding: ResetPassWordBinding(),
   ),

 ];
 }
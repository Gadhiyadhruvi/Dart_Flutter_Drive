import 'package:foodapp/get/controller/product_detail_controller.dart';
import 'package:get/get.dart';

class ProductDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailController>(() => ProductDetailController());
  }

}
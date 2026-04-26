import 'package:cravia_cakes/controllers/caetgroy_products_controller.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryProductsBinding extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => CategoryProductsController());
  Get.lazyPut(() => ProductDetailPageController());

  }
}
import 'package:get/get.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';

class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailPageController>(
      () => ProductDetailPageController(),
    );
  }
}
import 'package:cravia_cakes/bindings/category_products_binding.dart';
import 'package:cravia_cakes/bindings/home_bindings.dart';
import 'package:cravia_cakes/screens/category_products.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/screens/product_detail_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => DesktopBody(), binding: HomeBinding()),

    GetPage(
  name: "/category/:name",
  page: () => CategoryProducts(),
  binding: CategoryProductsBinding(),
  transition: Transition.rightToLeftWithFade, 
  transitionDuration: const Duration(milliseconds: 400), 
),
  GetPage(
  name: "/category/cakes/detail",
  page: () => ProductDetailPage(),
  // binding: CategoryProductsBinding(),
  transition: Transition.rightToLeftWithFade, 
  transitionDuration: const Duration(milliseconds: 400), 
),
  ];
}

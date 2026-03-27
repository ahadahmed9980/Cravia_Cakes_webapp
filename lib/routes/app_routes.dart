
import 'package:cravia_cakes/bindings/category_products_binding.dart';
import 'package:cravia_cakes/bindings/home_bindings.dart';
import 'package:cravia_cakes/screens/category_products.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => DesktopBody(), binding: HomeBinding()),

    GetPage(
      name: "/category/category_1",
      page: () => CategoryProducts(),
      binding: CategoryProductsBinding(),
      ),
  ];
}

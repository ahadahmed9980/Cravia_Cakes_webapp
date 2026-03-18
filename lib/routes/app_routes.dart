
import 'package:get/get.dart';
import 'package:cravia_cakes/bindings/home_bindings.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/screens/all_products_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => DesktopBody(), binding: HomeBinding()),

    GetPage(
      name: "/category/all_products_detail",
      page: () => AllProductsPage(),
    ),
  ];
}

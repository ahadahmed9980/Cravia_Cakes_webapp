import 'package:cravia_cakes/controllers/caetgroy_products_controller.dart';
import 'package:get/get.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}

import 'package:get/state_manager.dart';

class ProductDetailPageController extends GetxController {
  var isExpanded = true.obs;
  var price = 0.obs;

  void toggle() {
    isExpanded.value = !isExpanded.value;
  }

  void add() {
  
    if (price.value <10) {
   price.value += 1;
    }
  }

  void remove() {
    if (price.value > 0) {
      price.value -= 1;
    }
  }
}

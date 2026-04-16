import 'package:get/state_manager.dart';

class ProductDetailPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    onClose() {
      print("home controller dispose");
      super.onClose();
    }
  }

  var isExpanded = true.obs;
  var price = 0.obs;

  void toggle() {
    isExpanded.value = !isExpanded.value;
  }

  void add() {
    if (price.value < 10) {
      price.value += 1;
    }
  }

  void remove() {
    if (price.value > 0) {
      price.value -= 1;
    }
  }

  //mouse hovering
  var isHovering = false.obs;
  var selected_index = (-1).obs;
  
  //fetching data from firebase
  









}

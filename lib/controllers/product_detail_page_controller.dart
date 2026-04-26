import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/state_manager.dart';

class ProductDetailPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    print("home controller dispose");
    super.onClose();
  }

  var product;

  var isExpanded = true.obs;
  var quantity = 1.obs;

  void toggle() {
    isExpanded.value = !isExpanded.value;
  }

  void add() {
    if (quantity.value < 10) {
      quantity.value += 1;
    }
  }

  void remove() {
    if (quantity.value > 1) {
      quantity.value -= 1;
    }
  }

  //mouse hovering
  var isHovering = false.obs;
  var isadtocarthoverig = false.obs;
  var selected_index = (-1).obs;

  //fetching data from firebase
  var selectedcatageory; // this is set in category_product_screen;
  var more_related_products = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  Future<void> fetchingProducts() async {
    isLoading.value = true;
    final firestore = await FirebaseFirestore.instance
        .collection("Category_Cravia")
        .doc(selectedcatageory)
        .collection("Category_Products")
        .get();
    more_related_products.value = firestore.docs.map(doc){
      
    }
  }
}

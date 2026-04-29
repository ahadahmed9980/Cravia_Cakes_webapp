import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'package:get/state_manager.dart';

class ProductDetailPageController extends GetxController {
  late String selectedcatageory;
  @override
  void onInit() {
    super.onInit();
    // selectedcatageory = Get.arguments ?? "";
    // fetchingProducts();
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
  // var isHovering = false.obs;
  var isadtocarthoverig = false.obs;
  var selected_index = (-1).obs;
  var isaddhovering = false.obs;
  var islesshovering = false.obs;

  //fetching data from firebase
  // this is set in category_product_screen;
  var more_related_products = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  Future<void> fetchingProducts() async {
    try {
      print("Selected Category: $selectedcatageory");

      isLoading.value = true;
      final firestore = await FirebaseFirestore.instance
          .collection("Category_Cravia")
          .doc(selectedcatageory)
          .collection("Category_Products")
          .get();
      print("Docs length: ${firestore.docs.length}");
      more_related_products.value = firestore.docs.map((doc) {
        final data = doc.data();
        return {
          "id": doc.id,
          "text": data["text"] ?? "no title",
          "image": data["image"] ?? "no",
          "description": data["description"] ?? "...",
          "price": int.tryParse(data["price"].toString()) ?? 0,
        };
      }).toList();
    } catch (e) {
      print("Error fetching category products: $e");
    } finally {
      isLoading.value = false;
    }
  }
}

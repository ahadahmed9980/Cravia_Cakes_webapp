import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CategoryProductsController extends GetxController {
  var selected_index = (-1).obs;
  var isHovering = false.obs;

  var selectedProduct = "";
  var isLoading = true.obs;

  var CategoryProduct = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
     selectedProduct = Get.arguments ?? "";

    fetchingcategoryproducts(); 
  }

  Future<void> fetchingcategoryproducts() async {
    try {
      isLoading.value = true;

      final firestore = await FirebaseFirestore.instance
          .collection("Category_Cravia")
          .doc(selectedProduct)
          .collection("Category_Products")
          .get();

      CategoryProduct.value = firestore.docs.map((doc) {
        final data = doc.data();
        return {
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

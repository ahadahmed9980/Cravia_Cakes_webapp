import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
    fetchingcategoryproductbanner();
    // fetchingcategoryproductbanner();
    
  }
  //product section

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

  // banner section
  var category_Product_Banner = <Map<String, dynamic>>[].obs;
  var isLoading_Product_Banner = true.obs;
  Future<void> fetchingcategoryproductbanner() async {
    try {
      isLoading_Product_Banner(true);

      final firestore_product_banner = await FirebaseFirestore.instance
          .collection("Category_Cravia")
          .doc(selectedProduct)
          .collection("Category_Product_Banner")
          .doc("Image_Banner")
          .get();

      final data = firestore_product_banner.data();
      if (data != null) {
        category_Product_Banner.value = [
          {"image": data["image"] ?? "no"},
        ];
      }
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading_Product_Banner.value = false;
    }
  }
}

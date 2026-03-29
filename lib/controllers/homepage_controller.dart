import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  var images = <String>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchingcategory();
    images.value = [
      "images/cakes.png",
      "images/banner2.png",
      "images/banner3.png",
    ];
    onClose() {
      print("home controller dispose");
      super.onClose();
    }
  }

  //mouse hovering region
  var isHovering = false.obs;
  var selected_index = (-1).obs;

  //category home

  var isloading = true.obs;
  var category = <Map<String, dynamic>>[].obs;

  Future<void> fetchingcategory() async {
    try {
      isloading.value = true;
      final firestore = await FirebaseFirestore.instance
          .collection("Category_Cravia")
          .get();

      category.value = firestore.docs.map((doc) {
        final data = doc.data();
        return {
          "text": data["text"] ?? "no title",
          "image": data["image"] ?? "no",
          "id": doc.id,
        };
      }).toList();
    } catch (e) {
      print("Error fetching category: $e");
    } finally {
      isloading.value = false;
    }
  }
}

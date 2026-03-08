import 'package:get/get.dart';

class HomepageController extends GetxController {
  var images = <String>[].obs;
  @override
  void onInit() {
    super.onInit();
    images.value = [
      "images/banner.png",
      "images/banner2.png",
      "images/banner3.png",
    ];
  }

  //mouse hovering region
  var isHovering = false.obs;

  






}


import 'package:get/get.dart';

class CategoryProductsController extends GetxController {
  var selected_index = (-1).obs;
  var isHovering=false.obs;

  var selectedProduct=(-1).obs;



  //firebase section 
 var isLoading= true.obs;
var categoryProducts = <Map<String, dynamic>>[].obs;
  Future<void>fetcingproducts ()async {
    // try {
    //   isLoading.value=true;
    //   final snapshot=FirebaseFirestore.instance.collection("Category_Cravia").doc()
    // }

  }
  
}

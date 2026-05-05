import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cravia_cakes/models/cart_item.dart';
import 'package:get/get.dart';

//injected driectly in the main.dart file making its as a global controller
class CartController extends GetxController {
  var total_bill = 0.obs;
  int quantity = 1;
  int delivery_fee = 200;
  RxList<CartItem> cartitems = <CartItem>[].obs;
  //add item function
  void totalbill() {
    if (cartitems.isEmpty) {
      delivery_fee = 0;
      total_bill.value = 0;
    } else {
      delivery_fee = 200;
      total_bill.value = cartitems.fold(0, (sum, items) {
        return sum + items.price;
      });
      total_bill.value += delivery_fee;
    }
    update();
  }

  void addItems(String name, int price, int quantity, String image) {
    int index = cartitems.indexWhere((item) => item.name == name);
    if (index != -1) {
      cartitems[index].quantity += quantity;
      cartitems[index].price += price;
      cartitems.refresh();
    } else {
      cartitems.add(
        CartItem(name: name, price: price, quantity: quantity, image: image),
      );
      totalbill();
    }
  }
  // print just for debugging

  void printitem() {
    for (var i = 0; i < cartitems.length; i++) {
      final item = cartitems[i];
      print(
        "Item $i: ${item.name} - Qty: ${item.quantity} - Price: ${item.price}",
      );
    }
  }

  // clear cart
  void clear_cart() {
 
     cartitems.clear();
    total_bill.value = 0;
    totalbill();

  }

  // remove item ;
  void remove_item(String name) {
    cartitems.removeWhere((item) => item.name == name);
    print("Removed item: $name");
    print("Remaining items: ${cartitems.length}");
    total_bill.value = 0;
    totalbill();
  }
}

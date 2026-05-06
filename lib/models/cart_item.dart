class CartItem {
  String name;
  int price;
  int quantity;
  String image;
  String ?instructions;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
    this.instructions,

  });
}

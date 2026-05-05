import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class EndrawerProductBlueprint extends StatelessWidget {
  final cart_controller = Get.find<CartController>();
  final name;
  final quantity;
  final price;
  final image;
  EndrawerProductBlueprint({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final itemName = name ?? "Unknown";
    final itemQuantity = quantity ?? 1;
    final itemPrice = price ?? 0;
    final imageitem = image ?? "";
    return Container(
      height: 135,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: light,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                height: 60,
                width: 60,
                child: Image.network(imageitem, fit: BoxFit.contain),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
                SizedBox(height: 2),
                CustomText(
                  text: "Size",
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  size: 12,
                ),
                SizedBox(height: 2),
                CustomText(
                  text: itemQuantity.toString(),
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Spacer(),
                    CustomText(
                      text: "Rs. ${itemPrice.toString()}.00",
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(height: 3),
                //Buttons
                Row(
                  children: [
                    //add buttons
                    Container(
                      height: 25,
                      width: 25,

                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.zero,

                        onPressed: () {},
                        icon: Icon(Icons.add, color: whit, size: 15),
                      ),
                    ),
                    // quantity
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(3),
                      height: 35,
                      width: 50,

                      decoration: BoxDecoration(
                        color: whit,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: CustomText(
                        text: itemQuantity.toString(),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    // remove button
                    Container(
                      height: 25,
                      width: 25,

                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(Icons.remove, color: whit, size: 15),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        cart_controller.remove_item(name);
                      },
                      icon: FaIcon(FontAwesomeIcons.solidTrashCan, size: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

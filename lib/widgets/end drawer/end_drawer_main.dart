import 'package:cloudinary_url_gen/transformation/region.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/cart_controller.dart';
import 'package:cravia_cakes/widgets/end%20drawer/endrawer_product%20_blueprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';

class EndDrawerMain extends StatelessWidget {
  final cart_controller = Get.find<CartController>();
  EndDrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 390,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: whit,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  top: 70,
                  bottom: 180,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  children: [
                    Obx(() {
                      if (cart_controller.cartitems.isEmpty) {
                        return Center(
                          child: CustomText(
                            text: "Your Cart is Empty 😃!",
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        );
                      } else {
                        return ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: cart_controller.cartitems.length,
                          itemBuilder: (context, index) {
                            final item = cart_controller.cartitems[index];
                            return EndrawerProductBlueprint(
                              name: item.name,
                              quantity: item.quantity,
                              price: item.price,
                              image: item.image,
                            );
                          },
                        );
                      }
                    }),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: Container(
              padding: EdgeInsets.all(15),
              color: sbcolor,
              height: 60,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Your Cart",
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        size: 20,
                      ),
                      InkWell(
                        onTap: () {
                          if (cart_controller.cartitems.isEmpty) {
                          } else {
                            cart_controller.clear_cart();
                            Get.snackbar(
                              "Item Removed",
                              "item has been removed from cart",
                              snackPosition: SnackPosition.BOTTOM,
                              margin: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 20,
                              ),
                              padding: EdgeInsets.all(10),
                              maxWidth: 300,
                              borderRadius: 8,
                              backgroundColor: dark,
                              colorText: Colors.white,
                              duration: Duration(seconds: 1),
                            );
                          }
                        },
                        child: CustomText(
                          text: "Clear Cart",
                          color: dark,
                          fontWeight: FontWeight.w900,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // positioned of checkout billing section
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: sbcolor,
                border: Border(top: BorderSide(color: Colors.grey, width: 0.3)),
              ),
              height: 240,

              width: double.infinity,

              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  // free delivery container
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 5),
                    height: 32,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E7F9),
                      border: Border(top: BorderSide(color: dark, width: 2)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: CustomText(
                      text: "You've got Free Delivery!",
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "SubTotal",
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        size: 16,
                      ),
                      Obx(
                        () => CustomText(
                          text:
                              "Rs. ${cart_controller.total_bill.value - cart_controller.delivery_fee}.00",
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  // delivery charges
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Delivery Charges",
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        size: 16,
                      ),
                      CustomText(
                        text: "Rs. ${cart_controller.delivery_fee}.00",
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  //other charges
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Other Charges",
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        size: 16,
                      ),
                      CustomText(
                        text: "Rs. 0.00",
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 0.3,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 5),
                  //grand total
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Grand total",
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        size: 18,
                      ),
                      Obx(
                        () => CustomText(
                          text: "Rs. ${cart_controller.total_bill.value}.00",
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  ElevatedButton(
                  
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cart_controller.cartitems.isEmpty
                          ? Colors.grey
                          : org, 
                          

                    ),
                    onPressed: cart_controller.cartitems.isEmpty ? null : () {


                      
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: double.infinity,
                      child: CustomText(text: "Checkout"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

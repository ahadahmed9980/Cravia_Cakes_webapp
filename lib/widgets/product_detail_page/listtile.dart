import 'package:cached_network_image/cached_network_image.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Listtile extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final int price;
  final String image;

  const Listtile({
    required this.description,
    required this.image,
    required this.title,
    required this.price,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final controller = Get.find<ProductDetailPageController>();
     double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return MouseRegion(
      onEnter: (_) {
        controller.selected_index.value = index;
      },
      onExit: (_) {
        controller.selected_index.value = -1;
      },
      child: Obx(
        //inkwell
        () => InkWell(
          onTap: () {
            // Get.toNamed("/category/cakes/detail",arguments: controller.CategoryProduct[index]);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: controller.selected_index.value == index
                    ? dark
                    : const Color.fromARGB(255, 202, 215, 223),
                width: 1.9,
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                //pic adjust container
                Container(
                 
                  padding: EdgeInsets.all(3),

                  // width: double.infinity,
                  width: 270,

                  decoration: BoxDecoration(
                    color: light,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //wishlist heart
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          Container(
                            width: 30,
                            height: 30,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color.fromARGB(255, 235, 236, 237),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                size: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),

                      //image
                      SizedBox(
                        // width: _width,

                        // height: _width * 0.10,
                        height: 120,
                        child: CachedNetworkImage(
                          imageUrl: image.trim(),
                          fit: BoxFit.contain,

                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),

                      // dark blue box
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: dark,
                        ),

                        child: CustomText(
                          text: "New",
                          size: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                    
                    ],
                  ),
                ),
                // detail part
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // SizedBox(height: _width * 0.01),
                    CustomText(
                      text: title,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),

                    SizedBox(height: _width * 0.015),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.w900,
                      ),
                    ),

                    SizedBox(height: _width * 0.015),
                    //price
                    CustomText(
                      text: "Rs. ${price}",
                      color: Colors.deepOrange,
                      size: 17,
                      fontWeight: FontWeight.w900,
                    ),

                    SizedBox(height: _width * 0.003),
                    //add to cart
                    InkWell(
                      onTap: () {},
                      child: Container(
                        // height: 30,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: dark,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CustomText(
                          text: " Add To Cart ",
                          fontWeight: FontWeight.w900,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

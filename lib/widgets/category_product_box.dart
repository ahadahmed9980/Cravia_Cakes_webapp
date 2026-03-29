import 'package:cached_network_image/cached_network_image.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/caetgroy_products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CategoryProductBox extends StatelessWidget {
  final controller = Get.find<CategoryProductsController>();
  int index;
  String title;
  String description;
  int price;
  String image;

  CategoryProductBox({
    required this.description,
    required this.image,
    required this.title,
    required this.price,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: controller.selected_index.value == index
                    ? dark
                    : const Color.fromARGB(255, 202, 215, 223),
                width: 1.5,
              ),
            ),
            height: 400,
            width: 280,
            child: Column(
              children: [
                //pic adjust container
                Container(
                  // height: 250,
                  height: _height * 0.43,

                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: light,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
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
                      SizedBox(height: _height * 0.02),

                      //image
                      SizedBox(
                        width: _width,
                        height: 160,

                        // height: _height*0.3,
                        child: CachedNetworkImage(
                          imageUrl: image.trim(),
                          fit: BoxFit.contain,
                          placeholder: (context, url) => Center(
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      SizedBox(height: 15),
                      // dark blue box
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: dark,
                        ),
                        height: 20,
                        child: CustomText(
                          text: "New",
                          size: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // detail part
                Column(
                  children: [
                    SizedBox(height: 3),
                    CustomText(
                      text: title,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                    SizedBox(height: 11),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,

                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 9),
                    ),
                    SizedBox(height: 11),
                    //price
                    CustomText(
                      text: price.toString(),
                      color: Colors.deepOrange,
                      size: 13,
                      fontWeight: FontWeight.w900,
                    ),
                    SizedBox(height: 3),
                    //add to cart
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,

                        padding: EdgeInsets.all(6),
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

import 'package:cravia_cakes/constants/custom_container_pic.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/caetgroy_products_controller.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/widgets/category_product_box.dart';
import 'package:cravia_cakes/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryProductsController>();
    final data = Get.arguments;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height),
      body: !Responsive.isMobileScreen(context)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(left: 75, right: 70, top: 35),
                width: _width,
                child: Column(
                  children: [
                    //custom container pic
                    CustomContainerPic(index: data, image: "uuuuuu"),
                    Container(
                      decoration: BoxDecoration(
                        color: whit,
                        borderRadius: BorderRadius.circular(6),
                      ),

                      margin: EdgeInsets.only(top: _height * 0.029),

                      padding: EdgeInsets.all(14),
                      width: double.infinity,

                      // products ui
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            width: _width,
                            // color: Colors.black,
                            child: CustomText(
                              text: "Cracia Cakes",
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              size: 20,
                            ),
                          ),
                          //
                          SizedBox(height: 10),
                          //main product container
                          CategoryProductBox(index: data),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}

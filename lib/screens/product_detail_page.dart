import 'package:cravia_cakes/constants/custom_line_container.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/footer.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_page_expanded3.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_pageexpanded1.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_pageexpanded2.dart';
import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    String? selectedWeight = "2 LB";
    final controller = Get.put(ProductDetailPageController());
    //  final controller = Get.find<ProductDetailPageController>();

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height),
      body: !Responsive.isMobileScreen(context)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(left: 75, right: 70, top: 10),
                width: double.infinity,

                child: Column(
                  children: [
                    Container(
                      //main detail container
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.3,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                        color: whit,
                        borderRadius: BorderRadius.circular(6),
                      ),

                      margin: EdgeInsets.only(top: _height * 0.04),

                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 34,
                      ),
                      width: double.infinity,
                      // height: 450,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          //expand 1 image
                          ProductDetailPageexpanded1(),
                          SizedBox(width: 25),
                          //expanded 2 details
                          ProductDetailPageexpanded2(),

                          SizedBox(width: 110),
                          //expanded 3
                          ProductDetailPageExpanded3(),
                        ],
                      ),
                    ),
                    CustomLineContainer(
                      text: "More in Signature Cakes",
                      callback: () {},
                      size: 16,
                    ),
                   

                    SizedBox(height: 150),
                    Footer(),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}

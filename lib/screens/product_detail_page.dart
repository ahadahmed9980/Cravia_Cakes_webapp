import 'package:cravia_cakes/constants/custom_line_container.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/footer.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_page_expanded3.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_pageexpanded1.dart';
import 'package:cravia_cakes/widgets/product_detail_page/expanded/product_detail_pageexpanded2.dart';
import 'package:cravia_cakes/widgets/product_detail_page/listtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatelessWidget {
  final controller = Get.find<ProductDetailPageController>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ProductDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
   
    String? selectedWeight = "2 LB";
    final product = Get.arguments as Map<String, dynamic>;

    controller.fetchingProducts();

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    controller.product = product;
    print(controller.product);

    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height,_scaffoldKey),
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
                          ProductDetailPageexpanded1(images: product["image"]),
                          SizedBox(width: 25),
                          //expanded 2 details
                          ProductDetailPageexpanded2(
                            title: product["text"] ?? "",
                            description: product["description"] ?? "",
                            price: product["price"] ?? "",
                          ),

                          SizedBox(width: 110),
                          //expanded 3
                          ProductDetailPageExpanded3(),
                        ],
                      ),
                    ),
                    //more signature cakes
                    CustomLineContainer(
                      text: "More in Signature Cakes",
                      callback: () {},
                      size: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: whit,
                        borderRadius: BorderRadius.circular(6),
                      ),

                      margin: EdgeInsets.only(top: _height * 0.029),

                      padding: EdgeInsets.all(14),

                      height: 400,
                      child: Obx(() {
                        if (controller.isLoading.value) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (controller.more_related_products.isEmpty) {
                          return Center(
                            child: Text("No suggested product found"),
                          );
                        }
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.more_related_products.length,
                          itemBuilder: (context, index) {
                            final doc = controller.more_related_products[index];
                            final String productId = doc["id"] ?? "";
                            final title = doc["text"] ?? "no";
                            final image = doc["image"] ?? "no image";
                            final description = doc["description"] ?? "...";
                            final price = doc["price"] ?? 0;
                            return Container(
                              width: 200,

                              margin: EdgeInsets.only(right: 15),
                              child: Listtile(
                                description: description,
                                image: image,
                                title: title,
                                price: price,
                                index: index,
                              ),
                            );
                          },
                        );
                      }),
                    ),

                    SizedBox(height: 10),
                    Footer(),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}

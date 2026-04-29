import 'package:cravia_cakes/constants/custom_container_pic.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/caetgroy_products_controller.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/widgets/category_product_box.dart';
import 'package:cravia_cakes/navbar/footer.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryProducts extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryProductsController>();
    // final product_detail_page_controller =
    //     Get.find<ProductDetailPageController>();
    final product_detail_page_controller =
        Get.put(ProductDetailPageController(),permanent: true);

    final String data = Get.arguments.toString();
    controller.selectedProduct = data;
    product_detail_page_controller.selectedcatageory = data;
    print("thisssssssssssssss ${controller.selectedProduct}");

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
  
    int customcrossAxisCount;
    double customaspectratio;

    if (_width >= 1093) {
      // Desktop
      customcrossAxisCount = 4;
      customaspectratio = 0.59;
    } else if (_width >= 1051) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.77;
    } else if (_width >= 921) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.69;
    } else if (_width >= 891) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.67;
    } else if (_width >= 817) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.62;
    } else if (_width >= 789) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.60;
    } else if (_width >= 727) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.55;
    } else if (_width >= 665) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.50;
    } else if (_width >= 500) {
      // Tablet
      customcrossAxisCount = 3;
      customaspectratio = 0.43;
    } else {
      // Mobile
      customcrossAxisCount = 2;
      customaspectratio = 0.60;
    }
    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height,_scaffoldKey),
      body: !Responsive.isMobileScreen(context)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(left: 75, right: 70, top: 35),
                width: double.infinity,
                child: Column(
                  children: [
                    //custom container pic
                    Obx(() {
                      if (controller.isLoading_Product_Banner.value) {
                        return AspectRatio(
                          aspectRatio: 16 / 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Skeletonizer(
                              enabled: true,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: const Color.fromARGB(255, 210, 209, 209),
                              ),
                            ),
                          ),
                        );
                      }
                      if (controller.category_Product_Banner.isEmpty) {
                        return Center(child: Text("No image found"));
                      }
                      return CustomContainerPic(
                        image: controller.category_Product_Banner[0]["image"],
                      );
                    }),

                    Container(
                      decoration: BoxDecoration(
                        color: whit,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.3,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
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
                            child: InkWell(
                              onTap: () {
                                print("width..... ${_width}");
                                print("height..... ${_height}");
                              },
                              child: CustomText(
                                text: "Cracia Cakes",
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                size: 20,
                              ),
                            ),
                          ),
                          //
                          SizedBox(height: 10),
                          //main product container
                          Container(
                            decoration: BoxDecoration(
                              color: whit,
                              borderRadius: BorderRadius.circular(6),
                            ),

                            margin: EdgeInsets.only(top: _height * 0.029),

                            padding: EdgeInsets.all(14),
                            width: double.infinity,

                            child: Obx(() {
                              if (controller.isLoading.value) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              if (controller.CategoryProduct.isEmpty) {
                                return Center(
                                  child: Text("No categories found"),
                                );
                              }
                              return GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: customcrossAxisCount,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,

                                      childAspectRatio: customaspectratio,
                                    ),
                                itemCount: controller.CategoryProduct.length,
                                itemBuilder: (context, index) {
                                  final doc = controller.CategoryProduct[index];

                                  return Center(
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 250,
                                      ),
                                      child: CategoryProductBox(
                                        description: doc["description"] ?? "",
                                        image: doc["image"] ?? "",
                                        title: doc["text"] ?? "",
                                        price: doc["price"] ?? 0,
                                        index: index,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                          ),
                        ],
                      ),
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

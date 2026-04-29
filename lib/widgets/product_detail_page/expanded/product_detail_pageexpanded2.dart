import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/product_detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductDetailPageexpanded2 extends StatelessWidget {
  final String title;
  final String description;
  final int price;
   final controller = Get.find<ProductDetailPageController>();
 ProductDetailPageexpanded2({
    required this.title,
    required this.description,
    required this.price,

    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
    // int quantity = 0;
  
    return Container(
      child: Expanded(
        flex: 5,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: title,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    size: 20,
                  ),

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
              //new box part
              SizedBox(height: 2),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
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
              SizedBox(height: 5),
              //deatil of products
              CustomText(
                text: description,
                maxlines: 4,
                color: Colors.grey,
                size: 13,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 20),
              // Size option
              Container(
                width: double.infinity,
                color: Color(0xFFF8F9FA),
                height: 80,

                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15),

                      decoration: BoxDecoration(
                        color: Color(0xFFE9ECEF),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Size",
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            size: 10,
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC34A),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: CustomText(
                              text: "Selected",
                              fontWeight: FontWeight.w900,
                              size: 10,
                            ),
                          ),
                          Spacer(),
                          //icon
                          Obx(
                            () => Container(
                              width: 20,
                              height: 20,
                              alignment: Alignment.center,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 101, 100, 100),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  controller.toggle();
                                },
                                icon: Icon(
                                  controller.isExpanded.value
                                      ? Icons.keyboard_arrow_up
                                      : Icons.keyboard_arrow_down,
                                  size: 20,
                                  color: whit,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //instruction section
              SizedBox(height: 20),
              Container(
                //container jis mai instruction text box hy
                width: double.infinity,
                color: Color(0xFFF8F9FA),

                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15),

                      decoration: BoxDecoration(
                        color: Color(0xFFE9ECEF),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Instructions",
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    //text field  any special request wala
                    Material(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: TextField(
                          expands: true,
                          maxLines: null,
                          minLines: null,
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          cursorWidth: 1.5,

                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: dark, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            hintText: "Any special request?...",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 67, 67, 67),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //remove or less
              Row(
                children: [
                 Obx(()=>
                 MouseRegion(onEnter: (_)=>controller.islesshovering.value=true,
                 onExit: (_)=>controller.islesshovering.value=false,
                 child:  Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: controller.islesshovering.value?dark:Colors.deepOrange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      
                      padding: null,
                      onPressed: () {
                        controller.remove();
                      },
                      icon: Icon(Icons.remove, color: whit, size: 15),
                    ),
                  ),
                 
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
                    child: Obx(
                      () => CustomText(
                        text: controller.quantity.value.toString(),
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  //add button 
                  Obx(
                    () => MouseRegion(
                      onEnter: (_) => controller.isaddhovering.value = true,
                      onExit: (_) => controller.isaddhovering.value = false,
                      child: Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: controller.isaddhovering.value
                              ? dark
                              : Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          padding: null,
                          onPressed: () {
                            controller.add();
                          },
                          icon: Icon(Icons.add, color: whit, size: 15),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),

                  //add to cart  and price
                  Obx(
                    () => MouseRegion(
                      onEnter: (_) => controller.isadtocarthoverig.value = true,
                      onExit: (_) => controller.isadtocarthoverig.value = false,
                      child: Container(
                        height: 30,
                        width: 190,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: controller.isadtocarthoverig.value
                              ? dark
                              : Colors.deepOrange,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => CustomText(
                                text: "Rs. ${controller.quantity.value * price}"
                                    .toString(),
                                fontWeight: FontWeight.w900,
                                size: 13,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print(controller.quantity.value);
                              },

                              child: CustomText(
                                text: "Add To Cart",
                                fontWeight: FontWeight.w900,
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

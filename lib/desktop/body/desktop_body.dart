import 'package:cravia_cakes/constants/custom_line_container.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:cravia_cakes/desktop/homescreen/home_category_tile.dart';
import 'package:cravia_cakes/desktop/homescreen/sliding_pic.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    final controller = Get.put(HomepageController());
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 75, right: 70, top: 35),
        // height: _height,
        width: _width,

        child: Column(
          children: [
            SlidingPic(),
            CustomLineContainer(text: "Shop by Category", callback: () {}),
            Container(
              decoration: BoxDecoration(
                color: whit,
                borderRadius: BorderRadius.circular(6),
                // borderRadius: BorderRadius.circular(15)
              ),

              margin: EdgeInsets.only(top: _height * 0.029),

              padding: EdgeInsets.all(14),
              width: double.infinity,
              height: _height * 0.35,

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                    HomeCategoryTile(),
                  ],
                ),
              ),
            ),

            // SizedBox(height: 50),
            CustomLineContainer(
              text: "Nimko Range",
              size: 12,
              imageUrl: "images/nimko.png",
              callback: () {},
            ),
            CustomLineContainer(
              text: "Sweets",
              size: 12,
              imageUrl: "images/sweets.png",
              callback: () {},
            ),
            CustomLineContainer(
              text: "Bakery",
              size: 12,
              imageUrl: "images/bakery.png",
              callback: () {},
            ),
            CustomLineContainer(
              text: "Cravia Cakes",
              size: 12,
              imageUrl: "images/cakes.png",
              callback: () {},
            ),
            CustomLineContainer(
              text: "Customized Cakes",
              size: 12,
              imageUrl: "images/custom.png",
              callback: () {},
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: dark,
              ),
              width: double.infinity,
              height: 200,
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // color: whit,
                        height: 80,
                        width: 150,
                        child: Image.asset("images/cravia.png"),
                      ),
                      Expanded(
                        flex: 2,
                        // height: 100,
                        // width: 200,
                        // color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Cravia Cakes"),
                            Row(
                              children: [
                                Icon(Icons.phone, size: 12, color: whit),
                                SizedBox(width: 3),
                                CustomText(
                                  text: "+923228027881",

                                  size: 9,
                                  color: whit,
                                  fontWeight: FontWeight.w100,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  size: 15,
                                  color: whit,
                                ),
                                SizedBox(width: 3),
                                CustomText(
                                  text: "craviacakes@gmail.com",
                                  color: whit,
                                  fontWeight: FontWeight.w100,
                                  size: 11,
                                ),
                              ],
                            ),
                            SizedBox(height: 1),
                            Row(
                              children: [
                                Image.asset(
                                  height: 50,
                                  width: 90,
                                  "images/playstore.png",
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 8),
                                Image.asset(
                                  height: 50,
                                  width: 90,
                                  "images/ios.png",
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Our Timings"),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Monday - Saturday"),

                                CustomText(text: "09:00 AM - 11:00 PM"),
                              ],
                            ),
                            SizedBox(height: 10),
                            CustomText(text: "Follow Us:"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  height: 20,
                                  width: 20,
                                  "images/facebook.png",
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  height: 20,
                                  width: 20,
                                  "images/x.png",
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 20,
                    child: CustomText(
                      text:
                          "Terms and conditions Privacy Policy FAQs Delivery Policy Return and Exchange Policy",
                      size: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

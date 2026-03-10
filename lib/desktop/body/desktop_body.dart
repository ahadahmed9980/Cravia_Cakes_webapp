import 'package:cravia_cakes/constants/custom_line_container.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:cravia_cakes/desktop/homescreen/home_category_tile.dart';
import 'package:cravia_cakes/desktop/homescreen/sliding_pic.dart';
import 'package:cravia_cakes/widgets/footer.dart';
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
          Footer(),
         
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

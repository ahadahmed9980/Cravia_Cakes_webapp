import 'package:cloudinary_url_gen/transformation/region.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart' show Inst;

class Layout extends StatelessWidget {
  Layout({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    final controller = Get.put(HomepageController());

    return Scaffold(
      key: _scaffoldKey,
      appBar: top_navigation_bar(context, _width, _height, _scaffoldKey),
      endDrawer: Drawer(
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
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.black,
                      ),
                      SizedBox(height: 30),
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
                        CustomText(
                          text: "Clear Cart",
                          color: dark,
                          fontWeight: FontWeight.w900,
                          size: 16,
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
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.3),
                  ),
                ),
                height: 240,

                width: double.infinity,

                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    // free delivery container
                      Container(alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left:5),
                          height: 30,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 148, 148, 183),
                            border: Border(
                              top: BorderSide(color: dark, width: 2),
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                          ),
                          child: CustomText(text: "You've got Free Delivery!",color: Colors.black,),
                        ),
                    Row(
                      children: [
                      
                        CustomText(
                          text: "SubTotal",
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      body: !Responsive.isMobileScreen(context) ? DesktopBody() : null,
    );
  }
}

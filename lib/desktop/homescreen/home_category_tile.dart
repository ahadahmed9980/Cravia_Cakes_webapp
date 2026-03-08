import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomeCategoryTile extends StatelessWidget {
  final controller = Get.put(HomepageController());

  HomeCategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return MouseRegion(
      onEnter: (_) {
        controller.isHovering.value = true;
      },
      onExit: (_) {
        controller.isHovering.value = false;
      },
      child: Obx(
        () => AspectRatio(
          aspectRatio: 0.8,
          child: Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(10),
            // width: _width * 0.15,
            // height: _height * 2,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 237, 235, 235).withOpacity(0.4), // shadow color
                  spreadRadius: 0, // shadow ka size
                  blurRadius: 5, // blur level
                  offset: Offset(1, 6), // x and y offset
                  blurStyle :BlurStyle.normal
                ),
              ],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: controller.isHovering.value ? dark : Colors.transparent,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(
                  aspectRatio: 11 / 12,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Image.asset(
                          "images/card1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    alignment: Alignment.center,

                    // width: _width * 102,
                    // height: 30,
                    child: CustomText(
                      text: "Ifftar Box",
                      size: 12,
                      fontWeight: FontWeight.bold,
                      softwrap: true,
                      maxlines: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

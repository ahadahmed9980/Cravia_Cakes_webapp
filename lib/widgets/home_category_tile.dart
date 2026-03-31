import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';

import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeCategoryTile extends StatelessWidget {
  final controller = Get.find<HomepageController>();
  //all product controller
  String title;
  String image;
  int index;
  final String categoryid;

  HomeCategoryTile({
    required this.image,
    required this.title,
    required this.index,
    required this.categoryid,
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
        () => GestureDetector(
          onTap: () {
            String slug = title.trim().replaceAll(' ', '-').toLowerCase();
            Get.toNamed("/category/$slug", arguments: categoryid);
          },
          child: AspectRatio(
            aspectRatio: 0.8,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(10),
              // width: _width * 0.15,
              // height: _height * 2,
              decoration: BoxDecoration(
                boxShadow: controller.selected_index.value == index
                    ? [
                        BoxShadow(
                          color: const Color.fromARGB(
                            255,
                            237,
                            235,
                            235,
                          ).withOpacity(0.4), // shadow color
                          spreadRadius: 0, // shadow ka size
                          blurRadius: 5, // blur level
                          offset: Offset(1, 6), // x and y offset
                          blurStyle: BlurStyle.normal,
                        ),
                      ]
                    : null,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: controller.selected_index.value == index
                      ? dark
                      : Colors.transparent,
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
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          //image Chache
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            child: CachedNetworkImage(
                              imageUrl: image.trim(),
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                      ),
                      alignment: Alignment.center,

                      //Text
                      child: CustomText(
                        text: title,
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
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SlidingPic extends StatelessWidget {
  const SlidingPic({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(HomepageController());
    return SizedBox(
                      width: double.infinity,
                      // color: Colors.blue,
                      child: Obx(
                        () => AspectRatio(
                          aspectRatio: 16 / 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CarouselSlider(
                              items: controller.images.map((path) {
                                return Image.asset(path, fit: BoxFit.cover);
                              }).toList(),
                              options: CarouselOptions(
                                viewportFraction: 1,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 4),
                                autoPlayAnimationDuration: Duration(seconds: 2),
                                autoPlayCurve: Curves.linearToEaseOut,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
  }
}
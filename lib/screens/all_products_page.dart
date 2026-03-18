import 'package:cravia_cakes/constants/custom_container_pic.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';

import 'package:cravia_cakes/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';


class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
    final index = data["index"];
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 75, right: 70, top: 35),
          width: _width,
          child: Column(
            children: [
              CustomContainerPic(),
              Container(
                decoration: BoxDecoration(
                  color: whit,
                  borderRadius: BorderRadius.circular(6),
                ),

                margin: EdgeInsets.only(top: _height * 0.029),

                padding: EdgeInsets.all(14),
                width: double.infinity,
                height: _height * 0.35,

                // home category
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

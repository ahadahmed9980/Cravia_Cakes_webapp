import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart' show Inst;

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    final controller = Get.put(HomepageController());

    return Scaffold(
      appBar: top_navigation_bar(context, _width, _height),
      body: !Responsive.isMobileScreen(context) ? DesktopBody() : null,
    );
  }
}

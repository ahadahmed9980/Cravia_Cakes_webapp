import 'package:cloudinary_url_gen/transformation/region.dart';
import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:cravia_cakes/controllers/homepage_controller.dart';
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:cravia_cakes/widgets/end%20drawer/end_drawer_main.dart';
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
      endDrawer: EndDrawerMain(),

      body: !Responsive.isMobileScreen(context) ? DesktopBody() : null,
    );
  }
}

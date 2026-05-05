
import 'package:cravia_cakes/desktop/body/desktop_body.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/top_navigation_bar.dart';
import 'package:cravia_cakes/widgets/end%20drawer/end_drawer_main.dart';
import 'package:flutter/material.dart';
class Layout extends StatelessWidget {
  Layout({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: top_navigation_bar(context, _width, _height, _scaffoldKey),
      endDrawer: EndDrawerMain(),

      body: !Responsive.isMobileScreen(context) ? DesktopBody() : null,
    );
  }
}

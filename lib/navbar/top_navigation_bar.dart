
import 'package:cravia_cakes/navbar/bottom_navbar.dart';
import 'package:cravia_cakes/helper/responsive.dart';
import 'package:cravia_cakes/navbar/desktop_navbar.dart';
import 'package:cravia_cakes/navbar/mobile_navbar.dart';
import 'package:flutter/material.dart';

AppBar top_navigation_bar(BuildContext context, double _width, double _height) {
  // double _width = MediaQuery.of(context).size.width;
  // double _height = MediaQuery.of(context).size.height;
  return AppBar(    automaticallyImplyLeading: false,
    leadingWidth: 50,
    centerTitle: false,
    backgroundColor: Color(0xFF0F10C1),
    // toolbarHeight: _height * 0.100,
    title: !Responsive.isMobileScreen(context)
    
        ? desktop_navbar()
        : MobileNavbar(),
    leading: Responsive.isMobileScreen(context)
    
        ? Container(
            padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),

            child: Image.asset('images/croplogo.png', fit: BoxFit.cover),
          )
        : null,

    bottom: !Responsive.isMobileScreen(context)
        ? PreferredSize(
            preferredSize: const Size.fromHeight(35),
            child: BottomNavbar(),
          )
        : null,
  );
  
}

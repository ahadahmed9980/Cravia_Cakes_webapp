import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 75, right: 65),
      color: whit,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 30,
            decoration: BoxDecoration(color: dark),
            padding: EdgeInsets.all(2),

            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Catageory",
                  size: 10,
                  fontWeight: FontWeight.w400,
                ),
                Icon(Icons.arrow_drop_down, size: 15, color: whit),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.phone, size: 15, color: Colors.black),
                SizedBox(width: 3),
                CustomText(
                  text: "+923228027881",

                  size: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                ),
                SizedBox(width: 20),
                Icon(Icons.email_outlined, size: 15, color: Colors.black),
                SizedBox(width: 3),
                CustomText(
                  text: "craviacakes@gmail.com",
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  size: 11,
                ),
              ],
            ),
          ),
          // Flexible(
          //   child:
          //   Container(
          //     color: Colors.blue,
          //     width: _width * 0.00001,
          //     height: 4,
          //   ),
          // ),
          CustomText(
            text: " ",
            color: Colors.black,
            fontWeight: FontWeight.w100,
            size: 11,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

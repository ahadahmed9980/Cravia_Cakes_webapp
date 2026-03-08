import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key});

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),

        width: _width * 0.95,

        height: _height * 0.100,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: whit, size: 25),
                SizedBox(width: 1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: "Deliver to",
                          size: 12,
                          fontWeight: FontWeight.w100,
                        ),
                        Icon(
                            Icons.arrow_drop_down,
                            color: whit,
                            size: 15,
                          ),
                      ],
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Allama Iqbal town, Lahore",
                        size: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    
                  ],
                ),
                
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: whit,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.person, color: dark, size: 18),
            ),

            // Spacer(),
          ],
        ),
      ),
    );
  }
}

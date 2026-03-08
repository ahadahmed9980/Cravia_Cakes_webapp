import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class desktop_navbar extends StatelessWidget {
  const desktop_navbar({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        // color: Colors.blue,
        width: _width * 0.95,

        height: _height * 0.100,
        margin: EdgeInsets.only(left: 50, right: 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                Icon(Icons.location_on, color: whit, size: 25),
                SizedBox(width: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: _height * 0.022),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Deliver to",
                            size: 10,
                            fontWeight: FontWeight.w100,
                          ),
                          Icon(Icons.arrow_drop_down, color: whit, size: 15),
                        ],
                      ),
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
              padding: EdgeInsets.only(top: _height * 0.018),
              height: 150,
              width: _width * 0.14,
              child: Image.asset('images/cravia.png', fit: BoxFit.cover),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Flexible(
                    child: Text(
                      "About Us",
                      style: TextStyle(color: whit, fontSize: 10),
                      maxLines: 2,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.09,
                    vertical: 0.04,
                  ),
                  width: 75,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: whit, width: 1.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Icon(
                        Icons.search,
                        size: 13,
                        color: const Color.fromARGB(255, 220, 217, 217),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: CustomText(
                          text: "Search...",
                          size: 8,
                          color: const Color.fromARGB(255, 220, 217, 217),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: _width * 0.009),
                Container(
                  width: 1,
                  height: 22,
                  color: const Color.fromARGB(255, 153, 152, 152),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: _width * 0.009),
                  decoration: BoxDecoration(
                    color: whit,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.person, color: dark, size: 18),
                ),
                Container(
                  width: 1,
                  height: 22,
                  color: const Color.fromARGB(255, 153, 152, 152),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: _width * 0.006),
                  child: Icon(Icons.shopping_cart, size: 18, color: whit),
                ),

                Icon(Icons.arrow_drop_down, size: 15, color: whit),
              ],
            ),

            // Spacer(),
          ],
        ),
      ),
    );
  }
}

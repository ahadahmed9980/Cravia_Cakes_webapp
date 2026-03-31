import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: dark,
      ),
      width: double.infinity,

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // pic
              Flexible(
                child: SizedBox(
                  // color: whit,
                  height: _height * 0.2,
                  width: _width * 0.1,
                  // height: 80,
                  // width: 150,
                  child: Image.asset("images/cravia.png", fit: BoxFit.contain),
                ),
              ),

              //cravia cakes column
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: _height * 0.2,
                  // width: _width * 0.3,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Cravia Cakes",
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone, size: 12, color: whit),
                          SizedBox(width: 3),
                          CustomText(
                            text: "+923228027881",

                            size: 9,
                            color: whit,
                            fontWeight: FontWeight.w100,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.email_outlined, size: 15, color: whit),
                          SizedBox(width: 3),
                          CustomText(
                            text: "craviacakes@gmail.com",
                            color: whit,
                            fontWeight: FontWeight.w100,
                            size: 9,
                            softwrap: true,
                            maxlines: 2,
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Row(
                        children: [
                          Flexible(
                            child: Image.asset(
                              // height: 50,
                              width: 80,
                              "images/playstore.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 8),
                          Flexible(
                            child: Image.asset(
                              // height: 50,
                              width: 80,
                              "images/ios.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // our timing column
              Expanded(
                flex: 2,
                child: SizedBox(
                  // width: _width * 0.3,
                  height: _height * 0.2,
                  // color: Colors.lightBlueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Our Timings",
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      // SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Monday - Saturday", size: 9),

                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: CustomText(
                                text: "09:00 AM - 11:00 PM",
                                maxlines: 2,
                                softwrap: true,
                                size: 9,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Follow Us:",
                            size: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                height: 20,
                                width: 20,
                                "images/facebook.png",
                                fit: BoxFit.contain,
                              ),
                              SizedBox(width: 10),
                              Image.asset(
                                height: 20,
                                width: 20,
                                "images/x.png",
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomText(
                        text: "",
                        color: whit,
                        fontWeight: FontWeight.w100,
                        size: 9,
                        softwrap: true,
                        maxlines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 15,
            runSpacing: 5,
            children: [
              CustomText(text: "Terms & Conditions", size: 10),

              CustomText(text: "Privacy Policy", size: 10),

              CustomText(text: "FAQs", size: 10),

              CustomText(text: "Delivery Policy", size: 10),

              CustomText(text: "Return & Exchange Policy", size: 10),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:cravia_cakes/constants/expanded3partbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailPageExpanded3 extends StatelessWidget {
  const ProductDetailPageExpanded3({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            color: Color(0xFFF8F9FA),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //main column
                              children: [
                                Expanded3partbox(
                                  text: "Cash and Online Paymets",
                                  secondtext:
                                      "Pay Cash or Online hassel-free!",
                                  icon: FaIcon(FontAwesomeIcons.wallet,size: 18),
                                ),
                                Divider(),
                                Expanded3partbox(
                                  text: "Delivery",
                                  secondtext: "Free Delivery With in 2km!",
                                  icon: FaIcon(FontAwesomeIcons.truck,size: 18),
                                ),
                                Divider(),
                                Expanded3partbox(
                                  text: "Order in Advance",
                                  secondtext:
                                      "place your order 24 hours before delivery",
                                  icon: FaIcon(FontAwesomeIcons.clipboard,size: 18),
                                ),
                                Divider(),
                                Expanded3partbox(
                                  text: "Advance Payment",
                                  secondtext:
                                      "25% payment must be made online in advance",
                                  icon: FaIcon(
                                    FontAwesomeIcons.handHoldingDollar,size: 18
                                  ),
                                ),
                                Divider(),
                                Expanded3partbox(text: "Customer Support", secondtext: "Contact us by email or phoe", icon:FaIcon(
                                    FontAwesomeIcons.headset,size: 18,
                                  ) )
                              ],
                            ),
                          ),
                        );
  }
}
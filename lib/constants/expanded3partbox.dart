import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:flutter/material.dart';


class Expanded3partbox extends StatelessWidget {
  final String text;
  final String secondtext;
  final Icon icon;
  const Expanded3partbox({
    required this.text,
    required this.secondtext,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       icon ,
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CustomText(
              text: text,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
            CustomText(text: secondtext, color: Colors.black, size: 9),
          ],
        ),
      ],
    );
  }
}

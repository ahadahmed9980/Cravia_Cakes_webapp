import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;
  final bool? softwrap;
  final int? maxlines;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.fontWeight,
    this.softwrap,
    this.maxlines,
   
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 14,
        color: color ?? whit,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: "Poppins"
      ),
      softWrap: softwrap,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      
    );

  }
}

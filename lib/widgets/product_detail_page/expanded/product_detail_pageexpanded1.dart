import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class ProductDetailPageexpanded1 extends StatelessWidget {
  final String images;
  const ProductDetailPageexpanded1({required this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: light,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,

          // height: 300,
          width: double.infinity,
          child: Image.network(images),
        ),
      ),
    );
  }
}

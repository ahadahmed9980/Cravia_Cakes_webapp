import 'package:flutter/material.dart';

class CustomContainerPic extends StatelessWidget {
  const CustomContainerPic({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset("images/banner2.png"),
      ),
    );
  }
}

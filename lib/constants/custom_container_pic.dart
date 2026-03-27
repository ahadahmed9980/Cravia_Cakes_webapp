import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomContainerPic extends StatelessWidget {
  int index;
  String image;
  CustomContainerPic({required this.index, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: image.trim(),
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
            child: SizedBox(child: CircularProgressIndicator(strokeWidth: 2)),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}

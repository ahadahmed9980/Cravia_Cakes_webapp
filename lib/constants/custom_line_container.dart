import 'package:cravia_cakes/constants/custom_text.dart';
import 'package:flutter/material.dart';

class CustomLineContainer extends StatelessWidget {
  final String text;
  final double? size;
  final String? imageUrl;
  final VoidCallback callback;
  CustomLineContainer({
    super.key,
    required this.text,
    this.size,
    this.imageUrl,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      // color: Colors.blue,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: _height * 0.065, bottom: _height * 0.030),
      width: double.infinity,

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(height: 1.5, color: Colors.black12)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomText(
                  text: text,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  size: size ?? 13,
                ),
              ),
              Expanded(child: Container(height: 1.5, color: Colors.black12)),
            ],
          ),
          SizedBox(height: imageUrl != null ? 40 : 0),
          if (imageUrl != null)
            Material(color: Colors.transparent, 
    borderRadius: BorderRadius.circular(15), 
    clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: callback,
      
                child: AspectRatio(
                  aspectRatio: 16 / 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(imageUrl!, fit: BoxFit.cover, height: 40),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String _width = width.toString();

    // return Container(
    //   width: 300,
    //   height: 300,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.brown), // Sirf frame dekhne ke liye
    //   ),
    //   child: Image.asset(
    //    'images/logo.png', // <-- Apni image ka sahi naam yahan likhein
    //     fit: BoxFit.contain,
    //     errorBuilder: (context, error, stackTrace) {
    //       // Agar image na milay to yeh error dikhay ga
    //       return const Center(
    //         child: Text(
    //           '❌ Image Not Found!\nCheck path in pubspec.yaml',
    //           textAlign: TextAlign.center,
    //           style: TextStyle(color: Colors.red),
    //         ),
    //       );
    //     },
    //   ),
    // );
    return Column(children: [Container(child: Text(_width))]);
  }
}

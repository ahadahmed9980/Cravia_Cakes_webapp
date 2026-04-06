import 'package:cravia_cakes/constants/style.dart';
import 'package:flutter/material.dart';

class Texfieldsearchbar extends StatelessWidget {
  const Texfieldsearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: dark, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          hintText: "Search products here...",
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 12,
          ),
          contentPadding: EdgeInsets.only(
            left: 10,
            right: 1,
            top: 9,
            bottom: 10,
          ),
        ),

        cursorColor: Colors.grey,
        cursorHeight: 20,
        cursorWidth: 1.5,
      ),
    );
  }
}

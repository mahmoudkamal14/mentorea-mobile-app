import 'package:flutter/material.dart';
class OnboradImage extends StatelessWidget {
   OnboradImage({super.key,required this.image});
String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 400,
      height: 270,
    );
  }
}

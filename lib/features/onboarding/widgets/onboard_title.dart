import 'package:flutter/material.dart';
class OnboardTitle extends StatelessWidget {
  OnboardTitle({super.key,required this.title});
String title ;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
          fontFamily: 'Gilton'),
    );
  }
}

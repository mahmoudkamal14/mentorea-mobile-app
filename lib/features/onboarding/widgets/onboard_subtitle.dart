import 'package:flutter/material.dart';
class OnboardSubtitle extends StatelessWidget {
  OnboardSubtitle({super.key,required this.subTitle});
  String subTitle ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        subTitle,
        textAlign: TextAlign.center,
        style:  const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
            fontFamily: 'Gilroy'),
      ),
    );
  }
}

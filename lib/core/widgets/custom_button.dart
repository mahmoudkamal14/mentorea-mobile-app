import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton ({super.key,required this.text,required this.color,required this.onTap,required this.textColor,required this.height,required this.width});
  String text;
  Color color;
  Color textColor;
  double height ,width ;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(

        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.none,color: textColor,fontSize: 18,fontFamily: 'Gilroy-'),)),
        ),
      ),
    );
  }
}

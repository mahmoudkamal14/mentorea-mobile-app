import 'package:flutter/material.dart';
class OnboardSmoothIndicator extends StatelessWidget {
   OnboardSmoothIndicator({super.key,required this.index});

  @override
  int index =0;
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i=0 ;i<3;i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: i==index ?25 : 6, height: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:i==index ? Colors.white :Colors.grey
            ),
          )
      ],);
  }
}

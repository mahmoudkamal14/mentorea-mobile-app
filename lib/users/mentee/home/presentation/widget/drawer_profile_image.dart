import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerProfileImage extends StatelessWidget {
  const DrawerProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 150.h,
          color: const Color(0xFF103A69),
        ),
        Positioned(
          top: 60.h,
          child: const CircleAvatar(
            radius: 80,
            child: CircleAvatar(
              radius: 76,
              backgroundImage: AssetImage('assets/images/daif.png'),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';

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
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: CircleAvatar(
              radius: 76,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              backgroundImage: getCachedUserData()!.image != null
                  ? NetworkImage(getCachedUserData()!.image!)
                  : const AssetImage(
                      'assets/images/default_user.png',
                    ) as ImageProvider,
            ),
          ),
        ),
      ],
    );
  }
}

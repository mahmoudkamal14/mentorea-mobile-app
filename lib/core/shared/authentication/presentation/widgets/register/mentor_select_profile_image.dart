import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/logic/register%20cubit/mentor_register_cubit.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/logic/register%20cubit/mentor_register_state.dart';

class MentorSelectProfileImage extends StatelessWidget {
  const MentorSelectProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorRegisterCubit, MentorRegisterState>(
      builder: (context, state) {
        final File? profileImageFile =
            MentorRegisterCubit.get(context).profileImageFile;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 150.h,
              child: profileImageFile != null
                  ? Image.file(profileImageFile)
                  : Image.asset(
                      alignment: AlignmentDirectional.centerStart,
                      'assets/images/default_user.png',
                      color: Theme.of(context).iconTheme.color,
                    ),
            ),
            Container(
              width: 150.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              decoration: ShapeDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 1,
                    color: Theme.of(context).iconTheme.color!,
                  ),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  selectImageBottomSheet(context);
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Theme.of(context).iconTheme.color,
                      size: 40,
                    ),
                    verticalSpace(10),
                    Text(
                      'Add Image',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  PersistentBottomSheetController selectImageBottomSheet(BuildContext context) {
    return showBottomSheet(
      context: context,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.elasticOut,
        duration: const Duration(milliseconds: 800),
      ),
      builder: (context) => Container(
        height: 160.h,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                MentorRegisterCubit.get(context).getProfileImage('camera');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/camera.png', height: 80.h),
                  verticalSpace(8),
                  Text('Camera', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                MentorRegisterCubit.get(context).getProfileImage('gallery');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/apple.png', height: 80.h),
                  verticalSpace(8),
                  Text('Gallery',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/profile/mentee_profile_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/profile/mentee_profile_state.dart';
import 'package:shimmer/shimmer.dart';

class MenteeProfileImage extends StatelessWidget {
  const MenteeProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MenteeProfileResponseModel? menteeProfileModel;
    return BlocBuilder<MenteeProfileCubit, MenteeProfileState>(
      builder: (context, state) {
        if (state is GetMenteeProfileSuccessState) {
          menteeProfileModel = MenteeProfileCubit.get(context).profileModel!;
        }
        return state is GetMenteeProfileSuccessState
            ? Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120.h,
                        color: Theme.of(context).appBarTheme.backgroundColor,
                      ),
                      Positioned(
                        top: 30.h,
                        child: const CircleAvatar(
                          radius: 90,
                          child: CircleAvatar(
                            radius: 86,
                            backgroundImage:
                                AssetImage('assets/images/daif.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(100),
                  Text(menteeProfileModel!.name!,
                      style: Theme.of(context).textTheme.titleMedium),
                  verticalSpace(4),
                  Text(
                    menteeProfileModel!.email!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )
            : const MenteeProfileImageShimmer();
      },
    );
  }
}

class MenteeProfileImageShimmer extends StatelessWidget {
  const MenteeProfileImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 120.h,
              color: Theme.of(context).appBarTheme.backgroundColor,
            ),
            Positioned(
              top: 30.h,
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: const CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(100),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: 150.w,
            height: 20.h,
            color: Colors.white,
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            width: 170.w,
            height: 16.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

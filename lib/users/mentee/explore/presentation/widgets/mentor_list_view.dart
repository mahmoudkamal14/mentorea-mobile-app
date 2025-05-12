import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_state.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_list_view_item.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_shimmer_loading.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ExploreMentorCubit, ExploreMentorState>(
        builder: (context, state) {
          if (state is GetMentorsBySpecializationLoading) {
            return setupLoading();
          } else {
            var mentorsList = ExploreMentorCubit.get(context)
                .mentorsListResponseModelBySpecialization;
            if (mentorsList.isEmpty) {
              return noMentorsAvailable(context);
            } else {
              return ListView.builder(
                itemCount: mentorsList.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: FadeInRight(
                    delay: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) =>
                                MentorProfileScreen(mentor: mentorsList[index]),
                          ),
                        );
                      },
                      child: MentorCardListViewItem(
                        mentor: mentorsList[index],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }

  SizedBox noMentorsAvailable(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Center(
        child: Text(
          'No mentors available',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  SizedBox setupLoading() {
    return SizedBox(
      height: 400.h,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => const MentorCardShimmerLoading(),
      ),
    );
  }
}

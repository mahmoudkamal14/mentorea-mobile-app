import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_state.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_list_view_item.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_shimmer_loading.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    var mentors = listOfMentors;
    return Expanded(
      child: BlocBuilder<ExploreMentorCubit, ExploreMentorState>(
        builder: (context, state) {
          var mentorsList = ExploreMentorCubit.get(context)
              .mentorsListResponseModelBySpecialization;

          if (state is GetMentorsBySpecializationLoading) {
            return setupLoading();
          } else if (mentors.isEmpty) {
            return noMentorsAvailable(context);
          } else {
            return ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: FadeInRight(
                  delay: const Duration(milliseconds: 100),
                  curve: Curves.linear,
                  child: MentorCardListViewItem(
                      mentor: mentorsList!.items![index]),
                ),
              ),
            );
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

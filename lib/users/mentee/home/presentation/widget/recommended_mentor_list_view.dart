import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/datasource/mentors_data.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_state.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/recommended_mentor_list_view_item.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/recommended_mentor_shimmer_loading.dart';

class RecommendedMentorListView extends StatelessWidget {
  const RecommendedMentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    var mentors = listOfMentors;
    return BlocBuilder<RecommendedMentorsCubit, RecommendedMentorsState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.current.recommendedForYou,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                GestureDetector(
                  onTap: () {
                    // if (mentors!.items!.isNotEmpty) {
                    //   // Navigate to See All Mentors
                    // }
                  },
                  child: Text(
                    S.current.seeAll,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            SizedBox(
              height: 350.h,
              child: ListView.builder(
                itemCount: state is RecommendedMentorsLoadingState ? 3 : 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: isArabic() ? 0 : 16.h,
                    left: isArabic() ? 16.h : 0,
                  ),
                  child: state is RecommendedMentorsLoadingState
                      ? const RecommendedMentorShimmerLoading()
                      : RecommendedMentorListViewItem(
                          mentor: mentors[index],
                        ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

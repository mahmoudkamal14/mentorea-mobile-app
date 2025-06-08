import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_state.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/recommended_mentor_shimmer_loading.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/top_mentors_list_view_item.dart';

class TopMentorsListView extends StatelessWidget {
  const TopMentorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedMentorsCubit, RecommendedMentorsState>(
      builder: (context, state) {
        var mentors = RecommendedMentorsCubit.get(context).topRatedMentors;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.current.topRated,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                GestureDetector(
                  onTap: () {
                    if (mentors!.items!.isNotEmpty) {
                      // Navigate to See All Mentors
                    }
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
                itemCount: state is TopRatedMentorsLoadingState ? 3 : 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: isArabic() ? 0 : 16.h,
                    left: isArabic() ? 16.h : 0,
                  ),
                  child: state is TopRatedMentorsLoadingState
                      ? const RecommendedMentorShimmerLoading()
                      : TopMentorsListViewItem(
                          mentor: mentors!.items![index],
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

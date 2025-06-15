import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/logic/recommended_mentors_state.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/screens/mentors_home_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/mentors_list_view_horizontal_item.dart';
import 'package:mentorea_mobile_app/users/mentee/home/presentation/widget/recommended_mentor_shimmer_loading.dart';

class RecommendedMentorListView extends StatelessWidget {
  const RecommendedMentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedMentorsCubit, RecommendedMentorsState>(
      buildWhen: (previous, current) =>
          current is RecommendedMentorsLoadingState ||
          current is RecommendedMentorsSuccessState ||
          current is RecommendedMentorsErrorState,
      builder: (context, state) {
        var mentors = RecommendedMentorsCubit.get(context).recommendedMentors;

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
                    if (mentors.isNotEmpty) {
                      // Navigate to See All Mentors
                      _navigateToMentorsHomeScreen(
                        context,
                        topRatedMentors: mentors,
                        title: S.current.recommendedForYou,
                      );
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
                itemCount: mentors.isEmpty ? 3 : 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(
                    right: isArabic() ? 0 : 16.h,
                    left: isArabic() ? 16.h : 0,
                  ),
                  child: mentors.isEmpty
                      ? const RecommendedMentorShimmerLoading()
                      : MentorsListViewHorizontalItem(
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

  void _navigateToMentorsHomeScreen(
    BuildContext context, {
    required List<MentorResponseModel> topRatedMentors,
    required String title,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            MentorsHomeScreen(
          mentors: topRatedMentors,
          title: title,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }
}

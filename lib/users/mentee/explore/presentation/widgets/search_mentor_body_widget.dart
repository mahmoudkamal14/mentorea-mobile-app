import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_state.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_list_view_item.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_shimmer_loading.dart';

class SearchMentorBodyWidget extends StatelessWidget {
  const SearchMentorBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreMentorCubit, ExploreMentorState>(
      builder: (context, state) {
        var mentorsList =
            ExploreMentorCubit.get(context).mentorsListResponseModel;
        return ListView.builder(
          itemCount: mentorsList.length,
          itemBuilder: (context, index) => mentorsList.isEmpty
              ? const MentorCardShimmerLoading()
              : Padding(
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
      },
    );
  }
}

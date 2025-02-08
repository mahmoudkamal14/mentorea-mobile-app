import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_list_view_item.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: FadeInRight(
            delay: const Duration(milliseconds: 100),
            curve: Curves.linear,
            child: const MentorCardListViewItem(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor_card_list_view_item.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: const MentorCardListViewItem(),
        ),
      ),
    );
  }
}

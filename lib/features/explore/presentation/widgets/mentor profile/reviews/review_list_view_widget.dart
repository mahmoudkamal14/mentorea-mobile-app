import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/reviews/review_list_view_item.dart';

class ReviewListViewWidget extends StatelessWidget {
  const ReviewListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: const ReviewListViewItem(),
        ),
      ),
    );
  }
}

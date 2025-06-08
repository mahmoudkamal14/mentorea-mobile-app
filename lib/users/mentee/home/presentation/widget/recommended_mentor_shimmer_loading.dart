import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:shimmer/shimmer.dart';

class RecommendedMentorShimmerLoading extends StatelessWidget {
  const RecommendedMentorShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ContainerCardWidget(
        width: 270.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            verticalSpace(12),
            Container(height: 16.h, width: 100.w, color: Colors.white),
            verticalSpace(4),
            Container(height: 14.h, width: 80.w, color: Colors.white),
            verticalSpace(12),
            Container(height: 14.h, width: 150.w, color: Colors.white),
            verticalSpace(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 14.h, width: 60.w, color: Colors.white),
                    verticalSpace(4),
                    Container(height: 14.h, width: 40.w, color: Colors.white),
                  ],
                ),
                Row(
                  children: [
                    Container(height: 14.h, width: 20.w, color: Colors.white),
                    horizontalSpace(4),
                    const Icon(Icons.star, color: Colors.white),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MentorCardShimmerLoading extends StatelessWidget {
  const MentorCardShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.white,
            ),
            const SizedBox(height: 12),
            Container(height: 20, width: 150, color: Colors.white),
            const SizedBox(height: 8),
            Container(height: 16, width: 200, color: Colors.white),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 16, width: 100, color: Colors.white),
                Container(height: 16, width: 80, color: Colors.white),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 16, width: 130, color: Colors.white),
                Container(height: 16, width: 40, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

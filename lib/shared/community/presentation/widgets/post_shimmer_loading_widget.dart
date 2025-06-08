import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostShimmerLoadingWidget extends StatelessWidget {
  const PostShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const CircleAvatar(radius: 20, backgroundColor: Colors.white),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 10, width: 120, color: Colors.white),
                    const SizedBox(height: 6),
                    Container(height: 10, width: 80, color: Colors.white),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            // Body
            Container(height: 10, width: double.infinity, color: Colors.white),
            const SizedBox(height: 8),
            Container(height: 10, width: double.infinity, color: Colors.white),
            const SizedBox(height: 8),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width * 0.7,
              color: Colors.white,
            ),
            const SizedBox(height: 12),
            Container(height: 180, width: double.infinity, color: Colors.white),
            const SizedBox(height: 12),
            // Footer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 10, width: 60, color: Colors.white),
                Container(height: 10, width: 60, color: Colors.white),
                Container(height: 10, width: 60, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

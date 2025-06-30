import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CommentShimmerLoadingWidget extends StatelessWidget {
  const CommentShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(radius: 18, backgroundColor: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(height: 10, width: 100, color: Colors.white),
                      const SizedBox(width: 10),
                      Container(height: 10, width: 50, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                      height: 10, width: double.infinity, color: Colors.white),
                  const SizedBox(height: 6),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationShimmerLoadingWidegt extends StatelessWidget {
  const SpecializationShimmerLoadingWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: const SizedBox(width: 100, height: 10),
      ),
    );
  }
}

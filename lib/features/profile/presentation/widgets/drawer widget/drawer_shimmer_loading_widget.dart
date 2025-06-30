import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DrawerShimmerLoadingWidget extends StatelessWidget {
  const DrawerShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[300]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 10,
                    width: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            ...List.generate(5, (index) {
              return ListTile(
                leading: const CircleAvatar(
                    backgroundColor: Colors.white, radius: 50),
                title: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

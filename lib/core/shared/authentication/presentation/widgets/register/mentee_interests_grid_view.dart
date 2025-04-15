import 'package:flutter/material.dart';

class MenteeInterestsGridView extends StatelessWidget {
  const MenteeInterestsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
        itemCount: 16,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => const MenteeInterestsGridView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/community_post_list_view.dart';

class MenteeCommunityScreen extends StatelessWidget {
  const MenteeCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(),
        Expanded(child: CommunityPostListView()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/community_post_list_view.dart';

class MenteeCommunityScreen extends StatelessWidget {
  const MenteeCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      onRefresh: () async {
        await CommunityPostCubit.get(context).getAllPosts();
      },
      child: const Column(
        children: [
          SizedBox(),
          Expanded(child: CommunityPostListView()),
        ],
      ),
    );
  }
}

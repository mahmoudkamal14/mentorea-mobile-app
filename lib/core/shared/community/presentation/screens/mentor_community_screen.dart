import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/community_post_list_view.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/create_new_post_widget.dart';

class MentorCommunityScreen extends StatelessWidget {
  const MentorCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CreateNewPostWidget()),
        SliverToBoxAdapter(child: verticalSpace(20)),
        const CommunityPostListView(),
      ],
    );
  }
}

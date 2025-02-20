import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/community/data/datasource/local/list_posts_data.dart';
import 'package:mentorea_mobile_app/users/mentee/community/presentation/widgets/community_post_list_view_item.dart';

class CommunityPostListView extends StatelessWidget {
  const CommunityPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    var posts = listOfPosts;
    return SliverList.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: CommunityPostListViewItem(
          posts: posts[index],
          selectedItem: index,
        ),
      ),
    );
  }
}

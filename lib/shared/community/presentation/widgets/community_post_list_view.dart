import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/post/community_post_state.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/widgets/community_post_list_view_item.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/widgets/post_shimmer_loading_widget.dart';

class CommunityPostListView extends StatelessWidget {
  const CommunityPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityPostCubit, CommunityPostState>(
      builder: (context, state) {
        var posts = CommunityPostCubit.get(context).postsListResponseModel;

        if (state is GetAllPostsLoading) {
          return setupLoading();
        } else {
          if (posts!.items!.isEmpty) {
            return emptyList(context);
          } else {
            return SizedBox(
              height: 700.h,
              child: ListView.builder(
                itemCount: posts.items!.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: CommunityPostListViewItem(
                    postModel: posts.items![index],
                    selectedItem: index,
                  ),
                ),
              ),
            );
          }
        }
      },
    );
  }

  SizedBox setupLoading() {
    return SizedBox(
      height: 700.h,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: const PostShimmerLoadingWidget(),
        ),
      ),
    );
  }

  Widget emptyList(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Center(
        child: Text(
          isArabic() ? 'لا يوجد اي بوستات حتى الآن' : 'No posts available',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

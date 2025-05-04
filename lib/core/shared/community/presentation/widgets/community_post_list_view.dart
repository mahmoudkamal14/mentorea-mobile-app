import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_state.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/community_post_list_view_item.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_shimmer_loading_widget.dart';

class CommunityPostListView extends StatelessWidget {
  const CommunityPostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityPostCubit, CommunityPostState>(
      builder: (context, state) {
        var posts = CommunityPostCubit.get(context).postsListResponseModel;

        return state is GetAllPostsLoading
            ? const PostShimmerLoadingWidget()
            : SizedBox(
                height: 700.h,
                child: ListView.builder(
                  itemCount: posts!.items!.length,
                  reverse: true,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: CommunityPostListViewItem(
                      postModel: posts.items![index],
                      selectedItem: index,
                    ),
                  ),
                ),
              );
      },
    );
  }
}

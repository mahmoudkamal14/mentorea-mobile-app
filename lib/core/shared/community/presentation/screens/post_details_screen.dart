import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_state.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/comments_list_view.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/comments_sort_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_footer_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_info_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_shimmer_loading_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_cubit.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key, required this.postModel});

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<CommunityPostCubit>()..getPostDetails(postModel.id!),
        ),
        BlocProvider(
          create: (context) =>
              getIt<CommunityReactCubit>()..getAllComments(postModel.id!, 1),
        ),
        BlocProvider(
          create: (context) => getIt<MenteeProfileCubit>()..getMenteeProfile(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(postModel.name!),
          centerTitle: true,
          leading: const AppbarIcon(),
        ),
        bottomSheet: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: PostFooterWidget(maxLines: 3, postId: postModel.id!)),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<CommunityPostCubit, CommunityPostState>(
                  builder: (context, state) {
                    var post =
                        CommunityPostCubit.get(context).postResponseModel;
                    if (state is GetPostDetailsLoading) {
                      return const PostShimmerLoadingWidget();
                    } else {
                      return PostInfoWidget(postModel: post!);
                    }
                  },
                ),
                verticalSpace(4),
                CommentsSortWidget(postModel: postModel),
                verticalSpace(8),
                const CommentsListView(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/post/community_post_state.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/comments_list_view.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/comments_sort_widget.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/post_footer_widget.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/post_info_widget.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/post_shimmer_loading_widget.dart';
import 'package:mentorea_mobile_app/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';

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
          create: (context) => getIt<CommunityReactCubit>()
            ..getAllComments(
              postId: postModel.id!,
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ProfileCubit>()..getMenteeProfile(),
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
                    if (state is GetPostDetailsLoading) {
                      return const PostShimmerLoadingWidget();
                    } else {
                      return PostInfoWidget(postModel: postModel);
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

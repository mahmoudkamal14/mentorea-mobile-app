import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/comments_list_view.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_body_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_footer_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_header_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';

class PostDetailsScreen extends StatelessWidget {
  const PostDetailsScreen({super.key, required this.postModel});

  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CommunityReactCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(postModel.name!),
          centerTitle: true,
          leading: const AppbarIcon(),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    PostHeaderWidget(postModel: postModel),
                    verticalSpace(16),
                    PostBodyWidget(postModel: postModel),
                    verticalSpace(4),
                    const Divider(color: Color(0xFF103A69)),
                    verticalSpace(4),
                    const Text('Comments', style: TextStyle(fontSize: 16)),
                    verticalSpace(8),
                    const CommentsListView(),
                  ],
                ),
              ),
              verticalSpace(8),
              const Expanded(child: PostFooterWidget(maxLines: 3)),
            ],
          ),
        )),
      ),
    );
  }
}

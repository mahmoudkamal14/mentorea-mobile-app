import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/react/community_react_state.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/comment_list_view_item.dart';
import 'package:mentorea_mobile_app/features/community/presentation/widgets/comment_shimmer_loading_widget.dart';

class CommentsListView extends StatelessWidget {
  const CommentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityReactCubit, CommunityReactState>(
        builder: (context, state) {
      var cubit = CommunityReactCubit.get(context).commentsListResponseModel;

      if (state is GetAllCommentsLoading) {
        return setupLoading();
      } else if (state is GetAllCommentsSuccess && cubit!.items!.isEmpty) {
        return noComments(context);
      } else {
        return SizedBox(
          height: 400.h,
          child: ListView.builder(
            itemCount: cubit!.items!.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return CommentListViewItem(
                commentResponseModel: cubit.items![index],
              );
            },
          ),
        );
      }
    });
  }

  SizedBox noComments(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Center(
        child: Text(
          isArabic() ? 'لا يوجد تعليقات حتى الآن' : 'No comments yet',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  SizedBox setupLoading() {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => const CommentShimmerLoadingWidget(),
      ),
    );
  }
}

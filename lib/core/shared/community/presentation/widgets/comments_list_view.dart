import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_state.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/comment_list_view_item.dart';

class CommentsListView extends StatelessWidget {
  const CommentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityReactCubit, CommunityReactState>(
      builder: (context, state) {
        return SizedBox(
          height: 400.h,
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return const CommentListViewItem();
            },
          ),
        );
      },
    );
  }
}

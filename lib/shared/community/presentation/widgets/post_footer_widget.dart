import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/react/community_react_state.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_state.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class PostFooterWidget extends StatelessWidget {
  const PostFooterWidget({super.key, this.maxLines, required this.postId});

  final int? maxLines;
  final String postId;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController commentController = TextEditingController();

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        var userProfile = getCachedUserData();
        var commentCubit = CommunityReactCubit.get(context);

        return ContainerCardWidget(
          child: Form(
            key: formKey,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  foregroundColor: Theme.of(context).iconTheme.color,
                  child: userProfile!.image != null
                      ? Image.network(userProfile.image!)
                      : Image.asset(
                          'assets/images/default_user.png',
                          color: Theme.of(context).iconTheme.color,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: AppTextFormField(
                    textInputType: TextInputType.text,
                    maxLines: maxLines ?? 1,
                    controller: commentController,
                    hintText: isArabic() ? 'أضف تعليقًا' : 'Add a comment',
                    validator: (value) {},
                  ),
                ),
                horizontalSpace(12),
                BlocListener<CommunityReactCubit, CommunityReactState>(
                  listener: (context, state) {
                    if (state is CreateCommentSuccess) {
                      commentController.clear();
                      commentCubit.getAllComments(postId: postId);
                      CommunityPostCubit.get(context).getPostDetails(postId);
                    }
                  },
                  child: CircleAvatar(
                    radius: 28.r,
                    child: GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          commentCubit.createComment(
                            userId: userProfile.id,
                            postId: postId,
                            content: commentController.text,
                          );
                        }
                      },
                      child: Icon(
                        Icons.send,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

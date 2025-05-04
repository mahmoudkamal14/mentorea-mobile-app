import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/logic/react/community_react_state.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/mentee_profile_state.dart';

class PostFooterWidget extends StatelessWidget {
  const PostFooterWidget({super.key, this.maxLines, required this.postId});

  final int? maxLines;
  final String postId;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController commentController = TextEditingController();

    return BlocBuilder<MenteeProfileCubit, MenteeProfileState>(
      builder: (context, state) {
        var profileCubit = MenteeProfileCubit.get(context);
        var commentCubit = CommunityReactCubit.get(context);

        return ContainerCardWidget(
          child: Form(
            key: formKey,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  backgroundImage: profileCubit.profileModel?.pathPhoto != null
                      ? NetworkImage(profileCubit.profileModel!.pathPhoto!)
                      : const AssetImage(
                          'assets/images/default_user.png',
                        ) as ImageProvider,
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
                      commentCubit.getAllComments(postId, 1);
                      CommunityPostCubit.get(context).getPostDetails(postId);
                    }
                  },
                  child: CircleAvatar(
                    radius: 28.r,
                    child: GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          commentCubit.createComment(
                            userId: profileCubit.profileModel!.id!,
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

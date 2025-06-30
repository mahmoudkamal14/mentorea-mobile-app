import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/post/community_post_cubit.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/post/community_post_state.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CommunityPostCubit>(),
      child: BlocConsumer<CommunityPostCubit, CommunityPostState>(
        listener: (context, state) {
          if (state is CreatePostSuccess) {
            context.pop();
            showToast(
              msg: isArabic()
                  ? 'تم نشر المنشور بنجاح'
                  : 'Post published successfully',
              color: Colors.green,
            );
          }
        },
        builder: (context, state) {
          var cubit = CommunityPostCubit.get(context);
          return RefreshIndicator(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            onRefresh: () async {
              await CommunityPostCubit.get(context).getAllPosts();
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Create Post'),
                leading: const AppbarIcon(),
              ),
              body: SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  child: Form(
                    key: cubit.createPostFormKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: isArabic()
                              ? 'أكتب اي شئ تريد هنا'
                              : 'Write your post here...',
                          maxLines: 8,
                          controller: cubit.contentController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return isArabic()
                                  ? 'الرجاء كتابة محتوى للمنشور'
                                  : 'Please write content for the post';
                            }
                            return null;
                          },
                        ),
                        verticalSpace(20),
                        AppTextButton(
                          textButton: S.current.publishPost,
                          isLoading: state is CreatePostLoading ? true : false,
                          onPressed: () {
                            if (cubit.createPostFormKey.currentState!
                                .validate()) {
                              cubit.createPost();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

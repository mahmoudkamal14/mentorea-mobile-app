import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/community/presentation/widgets/community_post_list_view_item.dart';

class UserActivityWidget extends StatelessWidget {
  const UserActivityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        children: [
          Row(
            children: [
              Text('Activity', style: AppStyles.style24Meduim),
              const Spacer(),
              AppTextButton(
                textButton: 'Create Post',
                backgroundColor: Colors.black,
                buttonHeight: 40.h,
                buttonWidth: 120.w,
                onPressed: () {},
              ),
              horizontalSpace(8),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit, color: Colors.black),
              ),
            ],
          ),
          verticalSpace(20),
          SizedBox(
            height: 450.h,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return CommunityPostListViewItem(
                  selectedItem: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

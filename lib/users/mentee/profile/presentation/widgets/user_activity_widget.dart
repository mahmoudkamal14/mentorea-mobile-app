import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/datasource/local/list_posts_data.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/community_post_list_view_item.dart';

class UserActivityWidget extends StatelessWidget {
  const UserActivityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var posts = listOfPosts;
    return ContainerCardWidget(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Activity', style: Theme.of(context).textTheme.bodyLarge),
              const Spacer(),
              AppTextButton(
                textButton: 'Create Post',
                backgroundColor: Colors.black,
                buttonHeight: 40.h,
                buttonWidth: 120.w,
                onPressed: () {},
              ),
            ],
          ),
          verticalSpace(20),
          SizedBox(
            height: 500.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: isArabic() ? 0 : 16.h,
                  left: isArabic() ? 16.h : 0,
                ),
                child: CommunityPostListViewItem(
                  posts: posts[index],
                  selectedItem: index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

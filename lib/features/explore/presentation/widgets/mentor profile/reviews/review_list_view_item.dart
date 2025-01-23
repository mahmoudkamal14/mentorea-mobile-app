import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';

class ReviewListViewItem extends StatelessWidget {
  const ReviewListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('December 17, 2024', style: AppStyles.style16Regular),
        verticalSpace(10),
        Text(
          'The best aspect of my session with Mahmoud was his attentiveness during our conversation. He generously shared valuable insights and clearly outlined the obstacles I might face. Despite this, he remained very encouraging throughout our discussion.',
          style: AppStyles.style18MeduimBlack,
        ),
        verticalSpace(20),
        Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/daif.png'),
            ),
            horizontalSpace(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ali Daif Taha', style: AppStyles.style24Meduim),
                verticalSpace(8),
                Text(
                  'Machine Learning Engineer',
                  style: AppStyles.style16Regular,
                ),
              ],
            ),
          ],
        ),
        verticalSpace(10),
        const DividerWidget(),
      ],
    );
  }
}

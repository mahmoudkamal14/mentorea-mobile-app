import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/divider_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CreateNewPostWidget extends StatelessWidget {
  const CreateNewPostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32.r,
                backgroundImage: const AssetImage('assets/images/daif.png'),
              ),
              horizontalSpace(12),
              Text(
                S.current.writeYourPostHere,
                style: AppStyles.style20Meduim.copyWith(
                  color: const Color(0xFF646366),
                ),
              ),
            ],
          ),
          verticalSpace(10),
          const DividerWidget(color: Color(0xFF646366)),
          verticalSpace(10),
          Align(
            alignment: Alignment.centerRight,
            child: AppTextButton(
              buttonWidth: 140.w,
              buttonHeight: 46.h,
              textButton: S.current.publishPost,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

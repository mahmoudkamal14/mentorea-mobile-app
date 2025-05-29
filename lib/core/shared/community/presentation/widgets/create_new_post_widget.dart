import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/cache/models/user_model.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class CreateNewPostWidget extends StatelessWidget {
  const CreateNewPostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(Routes.createNewPostScreen);
      },
      child: ContainerCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32.r,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  backgroundImage: getCachedUserData()!.image != null
                      ? NetworkImage(getCachedUserData()!.image!)
                      : const AssetImage('assets/images/default_user.png')
                          as ImageProvider<Object>,
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
          ],
        ),
      ),
    );
  }
}

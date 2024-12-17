import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 112.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 2, child: Image.asset('assets/images/male.png')),
              horizontalSpace(16),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ahmed Mohsen', style: AppStyles.style24Meduim),
                    verticalSpace(8),
                    Text(
                      'Medical student | General',
                      style: AppStyles.style16Regular,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Align(
          alignment: isArabic() ? Alignment.centerLeft : Alignment.centerRight,
          child: AppTextButton(
            textButton: S.of(context).EditProfile,
            textStyle: AppStyles.style18Meduim.copyWith(color: Colors.white),
            buttonWidth: isArabic() ? 174.w : 128.w,
            buttonHeight: 50.h,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

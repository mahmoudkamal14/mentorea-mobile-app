import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeInterestsAndBioStep extends StatelessWidget {
  const MenteeInterestsAndBioStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).about,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.text,
          maxLines: 5,
          hintText: isArabic() == true
              ? 'انا محمود كمال ........'
              : 'I am Mahmoud Kamal ........',
          validator: (value) {},
        ),
        verticalSpace(20),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              sheetAnimationStyle: AnimationStyle(
                  curve: Curves.easeInCubic,
                  duration: const Duration(milliseconds: 900)),
              builder: (context) {
                return Container(
                  color: Colors.transparent,
                  height: MediaQuery.sizeOf(context).height * 0.70,
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 16.w),
                  child: Column(
                    children: [
                      ContainerCardWidget(
                        child: Text(
                          'Select your interests',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      verticalSpace(30),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 16,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(bottom: 4.h),
                            child: ContainerCardWidget(
                              child: Text(
                                'Select your interests',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: ContainerCardWidget(
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: Text(
              'Select your interests',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

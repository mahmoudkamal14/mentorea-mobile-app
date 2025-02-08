import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/data/models/user_type_model.dart';
import 'package:mentorea_mobile_app/users/mentee/onboarding/presentation/widgets/user_type_item_widget.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({super.key});

  @override
  State<UserTypeScreen> createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Choose Account Type',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                verticalSpace(40),
                SizedBox(
                  height: 530.h,
                  width: 300.w,
                  child: ListView.builder(
                    itemCount: listUserType.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 40.w),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: UserTypeItemWidget(
                            userType: listUserType,
                            index: index,
                            selectedIndex: selectedIndex,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                verticalSpace(30),
                AppTextButton(
                  textButton: S.current.Continue,
                  buttonWidth: 300.w,
                  onPressed: () {
                    if (selectedIndex == 0) {
                      context.navigateTo(Routes.menteeLoginScreen);
                    } else {
                      context.navigateTo(Routes.mentorLoginScreen);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

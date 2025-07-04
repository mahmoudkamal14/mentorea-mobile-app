import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/navigate_to.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/screens/login_screen.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/features/onboarding/data/models/user_type_model.dart';
import 'package:mentorea_mobile_app/features/onboarding/presentation/widgets/user_type_item_widget.dart';

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
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 60.h, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  S.current.chooseAccountType,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                verticalSpace(40),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: listUserType.length,
                      physics: const NeverScrollableScrollPhysics(),
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
                ),
                verticalSpace(30),
                AppTextButton(
                  textButton: S.current.Continue,
                  buttonWidth: 300.w,
                  onPressed: () {
                    if (selectedIndex == 0) {
                      navigateTo(
                        context,
                        screen: const LoginScreen(userType: UserType.mentee),
                      );
                    } else if (selectedIndex == 1) {
                      navigateTo(
                        context,
                        screen: const LoginScreen(userType: UserType.mentor),
                      );
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

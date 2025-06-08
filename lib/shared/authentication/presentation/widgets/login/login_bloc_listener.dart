import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/shared/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mentorea_mobile_app/shared/onboarding/data/models/user_type_model.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({
    super.key,
    required this.child,
    required this.userType,
  });

  final Widget child;
  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt()),
      child: BlocListener<LoginCubit, LoginState>(
        child: child,
        listener: (context, state) {
          switch (state) {
            case LoginSuccessState():
              setupSuccess(context);
              break;
            default:
          }
        },
      ),
    );
  }

  void setupSuccess(BuildContext context) {
    if (LoginCubit.get(context).userRole == 'Mentor') {
      context.navigateToAndRemoveUntil(Routes.mentorBottomNavBar);
      CacheHelper.saveData(
        key: CacheHelperKeys.login,
        value: Routes.mentorBottomNavBar,
      );
    } else if (LoginCubit.get(context).userRole == 'Mentee') {
      context.navigateToAndRemoveUntil(Routes.menteeBottomNavBar);
      CacheHelper.saveData(
        key: CacheHelperKeys.login,
        value: Routes.menteeBottomNavBar,
      );
    }
    showToast(msg: 'تم تسجيل الدخول إلي حسابك بنجاح', color: Colors.green);
  }
}

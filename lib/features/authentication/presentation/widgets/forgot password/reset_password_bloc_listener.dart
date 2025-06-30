import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordCubit>(),
      child: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
        child: child,
        listener: (context, state) {
          switch (state) {
            case ResetPasswordSuccessState():
              showToast(
                msg: 'تم إعادة تعيين كلمة المرور إلي الايميل بنجاح',
                color: Colors.green,
              );
              context.navigateToReplacement(Routes.userTypeScreen);

            case ResetPasswordErrorState():
              showToast(
                msg: 'فشل تعيين كلمة المرور إلي الايميل',
                color: Colors.red,
              );
              context.navigateToReplacement(Routes.userTypeScreen);

            case ForgotPasswordSuccessState():
              showToast(
                msg: 'تم إرسال الكود إلي الايميل بنجاح',
                color: Colors.green,
              );

            case ForgotPasswordErrorState():
              showToast(msg: 'فشل إرسال الكود إلي الايميل', color: Colors.red);

            default:
          }
        },
      ),
    );
  }
}

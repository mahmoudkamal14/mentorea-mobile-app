import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordCubit>(),
      child: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
        child: child,
        listener: (context, state) {
          switch (state) {
            case ForgotPasswordSuccessState():
              showToast(
                msg: 'تم إرسال كود إعادة تعيين كلمة المرور إلي الايميل بنجاح',
                color: Colors.green,
              );
              context.navigateToReplacement(Routes.resetPasswordScreen);

            case ForgotPasswordErrorState():
              showToast(msg: 'فشل إرسال الكود إلي الايميل', color: Colors.red);

            default:
          }
        },
      ),
    );
  }

  void setupError(BuildContext context, error) {
    showToast(
      msg: ApiErrorHandler.handleError(error).message,
      color: Colors.green,
    );
  }
}

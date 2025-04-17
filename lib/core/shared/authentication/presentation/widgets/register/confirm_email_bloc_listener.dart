import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/confirm%20email/confirm_email_cubit.dart';

class ConfirmEmailBlocListener extends StatelessWidget {
  const ConfirmEmailBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConfirmEmailCubit(getIt()),
      child: BlocListener<ConfirmEmailCubit, ConfirmEmailState>(
        child: child,
        listener: (context, state) {
          switch (state) {
            case ConfirmEmailSuccessState():
              showToast(msg: 'تم تأكيد الايميل بنجاح', color: Colors.green);
              context.navigateToReplacement(Routes.userTypeScreen);

            case ConfirmEmailErrorState():
              showToast(msg: 'فشكل تأكيد الايميل', color: Colors.red);

            case ResendConfirmEmailSuccessState():
              showToast(
                msg: 'تم إرسال الكود إلي الايميل بنجاح',
                color: Colors.green,
              );

            case ResendConfirmEmailErrorState():
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

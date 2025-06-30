import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/forgot%20password/forgot_password_cubit.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/screens/reset_password_screen.dart';

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
              _navigateToResetPasswordScreen(
                  context: context,
                  email: ForgotPasswordCubit.get(context).emailController.text);

            case ForgotPasswordErrorState():
              showToast(msg: 'فشل إرسال الكود إلي الايميل', color: Colors.red);

            default:
          }
        },
      ),
    );
  }

  void _navigateToResetPasswordScreen({
    required BuildContext context,
    required String email,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ResetPasswordScreen(email: email),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }
}

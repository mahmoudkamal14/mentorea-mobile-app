import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/screens/verify_email_screen.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>()..getAllFields(),
      child: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
          var cubit = RegisterCubit.get(context);

          switch (state) {
            case RegisterSuccessState():
              _setupSuccess(context, email: cubit.emailController.text);
              break;
            case GetAllFieldsErrorState():
              showToast(
                msg: isArabic()
                    ? 'لا يوجد اتصال بالانترنت الرجاء تفقد الشبكة وإعادة المحاولة في وقتٍ لاحق'
                    : 'There is no internet, please check the network and try again later',
                color: Colors.red,
              );
              break;
            default:
          }
        },
        child: child,
      ),
    );
  }

  void _setupSuccess(
    BuildContext context, {
    required String email,
  }) {
    showToast(
      msg: 'بالرجاء قم بفحص الايميل لتأكيد الأكونت',
      color: Colors.green,
    );
    _navigateToVerifyEmailScreen(context, email: email);
  }

  void _navigateToVerifyEmailScreen(
    BuildContext context, {
    required String email,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            VerifyEmailScreen(email: email),
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

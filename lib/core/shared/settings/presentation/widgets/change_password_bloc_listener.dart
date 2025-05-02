import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/show_toast.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/logic/settings_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/logic/settings_state.dart';

class ChangePasswordBlocListener extends StatelessWidget {
  const ChangePasswordBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsCubit>(),
      child: BlocListener<SettingsCubit, SettingsState>(
        listener: (context, state) {
          if (state is ChangePasswordSuccess) {
            showToast(msg: 'تم تحديث بروفايلك بنجاح', color: Colors.green);
            context.pop();
          } else if (state is ChangePasswordFailure) {
            showToast(msg: 'فشل تحديث بروفايلك', color: Colors.red);
          }
        },
        child: child,
      ),
    );
  }
}

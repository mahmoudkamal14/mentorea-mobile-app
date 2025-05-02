import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/logic/settings_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/settings/presentation/logic/settings_state.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/password_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ChangePasswordFormWidget extends StatelessWidget {
  const ChangePasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = SettingsCubit.get(context);
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordFormField(
            passwordController: cubit.currentPasswordController,
          ),
          verticalSpace(20),
          PasswordFormField(
            title: 'New Password',
            passwordController: cubit.newPasswordController,
          ),
          verticalSpace(60),
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return AppTextButton(
                textButton: S.of(context).changePassword,
                isLoading: state is ChangePasswordLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    cubit.changePasswordAccount();
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

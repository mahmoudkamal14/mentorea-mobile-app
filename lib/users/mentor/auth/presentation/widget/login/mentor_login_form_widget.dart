import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/extentions.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_button.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentor/auth/presentation/widget/forgot%20password/mentor_forgot_password_widget.dart';

class MentorLoginFormWidget extends StatefulWidget {
  const MentorLoginFormWidget({super.key});

  @override
  State<MentorLoginFormWidget> createState() => _MentorLoginFormWidgetState();
}

class _MentorLoginFormWidgetState extends State<MentorLoginFormWidget> {
  bool isObscureText = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'mentoreaapp19@gmail.com',
          validator: (value) {},
        ),
        verticalSpace(16),
        Text(
          S.of(context).password,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          validator: (value) {},
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText == true ? visibility : Icons.visibility,
            ),
          ),
        ),
        verticalSpace(8),
        const MentorForgotPasswordWidget(),
        verticalSpace(30),
        AppTextButton(
          textButton: S.of(context).login,
          onPressed: () {
            context.navigateToReplacement(Routes.mentorBottomNavBar);
          },
        ),
      ],
    );
  }
}

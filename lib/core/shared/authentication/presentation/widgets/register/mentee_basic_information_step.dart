import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeBasicInformationStep extends StatefulWidget {
  const MenteeBasicInformationStep({super.key});

  @override
  State<MenteeBasicInformationStep> createState() =>
      _MenteeBasicInformationStepState();
}

class _MenteeBasicInformationStepState
    extends State<MenteeBasicInformationStep> {
  bool isObscureText = true;
  bool isObscureTextConfirm = true;
  IconData visibility = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).name,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.text,
          hintText: 'Mahmoud Kamal',
          prefixIcon: Icon(
            Icons.person,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
        ),
        verticalSpace(12),
        Text(
          S.of(context).email,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: 'mentoreaapp19@gmail.com',
          prefixIcon: Icon(
            Icons.email,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
        ),
        verticalSpace(12),
        Text(
          S.of(context).password,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        verticalSpace(4),
        AppTextFormField(
          textInputType: TextInputType.visiblePassword,
          hintText: '********',
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          validator: (value) {},
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(isObscureText == true ? visibility : Icons.visibility),
          ),
        ),
      ],
    );
  }
}

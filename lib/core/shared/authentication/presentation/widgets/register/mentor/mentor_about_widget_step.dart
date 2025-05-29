import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/validator.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class MentorAboutWidgetStep extends StatelessWidget {
  const MentorAboutWidgetStep({super.key, required this.aboutFormKey});

  final GlobalKey<FormState> aboutFormKey;

  @override
  Widget build(BuildContext context) {
    var cubit = RegisterCubit.get(context);

    return Form(
      key: aboutFormKey,
      child: AppTextFormField(
        textInputType: TextInputType.text,
        controller: cubit.aboutController,
        maxLines: 7,
        hintText: isArabic() == true
            ? 'انا محمود كمال ........'
            : 'I am Mahmoud Kamal ........',
        validator: (value) {
          return validateAbout(value);
        },
      ),
    );
  }
}

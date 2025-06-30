import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/functions/validator.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class AboutWidgetStep extends StatelessWidget {
  const AboutWidgetStep({super.key, required this.aboutFormKey});

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

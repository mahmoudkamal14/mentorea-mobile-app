import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class PersonalInformationStep extends StatelessWidget {
  const PersonalInformationStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Your Name', style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.name,
          hintText: 'Mahmoud Fawzy',
          validator: (value) {},
        ),
        verticalSpace(16),
        Text('Phone', style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        InternationalPhoneNumberInput(
          inputDecoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: const Color(0xFF120E1A),
                width: 1.3.w,
              ),
            ),
          ),
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            useBottomSheetSafeArea: true,
            useEmoji: true,
            trailingSpace: false,
          ),
          hintText: '1151066097',
          countrySelectorScrollControlled: true,
          keyboardType: const TextInputType.numberWithOptions(
            signed: true,
            decimal: true,
          ),
          onInputChanged: (value) {},
        ),
        verticalSpace(16),
        Text('About Me', style: AppStyles.style18MeduimBlack),
        verticalSpace(8),
        AppTextFormField(
          textInputType: TextInputType.text,
          maxLines: 5,
          hintText: 'Im .......',
          validator: (value) {},
        ),
      ],
    );
  }
}

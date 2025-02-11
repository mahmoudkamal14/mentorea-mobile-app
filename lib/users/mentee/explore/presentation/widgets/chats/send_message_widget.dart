import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            textInputType: TextInputType.text,
            hintText: 'Message',
            suffixIcon: const Icon(Icons.attach_file_outlined),
            validator: (p0) {},
          ),
        ),
        horizontalSpace(12),
        CircleAvatar(
          radius: 26.r,
          backgroundColor: Colors.teal,
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.send_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

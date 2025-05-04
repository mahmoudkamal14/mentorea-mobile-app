import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';

class PostFooterWidget extends StatelessWidget {
  const PostFooterWidget({super.key, this.maxLines});

  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundImage: const AssetImage('assets/images/daif.png'),
        ),
        horizontalSpace(12),
        Expanded(
          child: AppTextFormField(
            textInputType: TextInputType.text,
            maxLines: maxLines ?? 1,
            hintText: isArabic() ? 'أضف تعليقًا' : 'Add a comment',
            validator: (value) {},
            suffixIcon: const Icon(Icons.send),
          ),
        ),
      ],
    );
  }
}

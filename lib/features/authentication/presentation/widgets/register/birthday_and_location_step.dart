import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/authentication/presentation/widgets/register/birthday_widegt_step.dart';

import 'location_widget_step.dart';

class BirthdayAndLocationStep extends StatelessWidget {
  const BirthdayAndLocationStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BirthdayWidegtStep(),
        verticalSpace(12),
        const LocationWidgetStep()
      ],
    );
  }
}

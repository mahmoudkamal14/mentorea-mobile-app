import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeHomeScreen extends StatelessWidget {
  const MenteeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: const ShapeDecoration(
                color: Color(0xFF103A69),
                shape: OvalBorder(),
              ),
              child: Image.asset('assets/icons/Mentorea Icon.png'),
            ),
            horizontalSpace(22),
            Text(S.of(context).Mentorea, style: AppStyles.style24Bold),
          ],
        ),
      ],
    );
  }
}

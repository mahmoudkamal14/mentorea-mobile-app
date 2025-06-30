import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/functions/build_welcome_message.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/onboarding/data/models/user_type_model.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({
    super.key,
    required this.userType,
  });

  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                buildWelcomeMessage(userType).messageTitile,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 120,
                height: 100,
                child: Image.asset('assets/icons/Mentorea Icon.png'),
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          buildWelcomeMessage(userType).messageContent,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

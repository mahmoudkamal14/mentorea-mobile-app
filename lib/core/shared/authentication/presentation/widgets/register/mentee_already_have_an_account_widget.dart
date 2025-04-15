import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class MenteeAlreadyHaveAnAccountWidget extends StatelessWidget {
  const MenteeAlreadyHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        S.of(context).IAlreadyHaveAnAccount,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}

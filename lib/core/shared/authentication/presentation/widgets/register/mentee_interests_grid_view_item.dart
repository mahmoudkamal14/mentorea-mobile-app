import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class MenteeInterestsGridViewItem extends StatelessWidget {
  const MenteeInterestsGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      width: 140,
      child: Text(
        'Android',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}

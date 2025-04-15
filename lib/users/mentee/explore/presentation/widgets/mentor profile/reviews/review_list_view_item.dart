import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class ReviewListViewItem extends StatelessWidget {
  const ReviewListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('December 17, 2024',
              style: Theme.of(context).textTheme.bodySmall),
          verticalSpace(10),
          Text(
            'The best aspect of my session with Mahmoud was his attentiveness during our conversation. He generously shared valuable insights and clearly outlined the obstacles I might face. Despite this, he remained very encouraging throughout our discussion.',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          verticalSpace(20),
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/daif.png'),
              ),
              horizontalSpace(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ali Daif Taha',
                      style: Theme.of(context).textTheme.bodyLarge),
                  verticalSpace(8),
                  Text(
                    'Machine Learning Engineer',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

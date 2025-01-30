import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class MenteeEducationWidget extends StatelessWidget {
  const MenteeEducationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Education', style: AppStyles.style24Meduim),
              const Spacer(),
              const Icon(Icons.add, color: Colors.black),
              horizontalSpace(8),
              const Icon(Icons.edit, color: Colors.black),
            ],
          ),
          verticalSpace(10),
          ListTile(
            leading: const Icon(
              Icons.school_outlined,
              color: Colors.black,
              size: 40,
            ),
            titleAlignment: ListTileTitleAlignment.top,
            title: Text(
              'Fayoum University',
              style: AppStyles.style24Meduim,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bachelor’s degree in Computer Science',
                  style: AppStyles.style18MeduimBlack,
                ),
                Text(
                  '2021 - 2025',
                  style: AppStyles.style16Regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

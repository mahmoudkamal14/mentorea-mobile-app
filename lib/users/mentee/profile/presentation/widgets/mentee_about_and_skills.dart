import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class MenteeAboutAndSkills extends StatelessWidget {
  const MenteeAboutAndSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About', style: AppStyles.style24Meduim),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit, color: Colors.black),
              ),
            ],
          ),
          verticalSpace(20),
          Text(
            'As a Flutter Developer with a Bachelor’s degree in Computer Science from the College of Computers and Artificial Intelligence, Fayoum University, I specialize in creating high-quality cross-platform applications that deliver seamless and intuitive user experiences. Passionate about writing clean, efficient, and scalable code, I am committed to implementing industry best practices to build solutions that not only meet but exceed user expectations.',
            style: AppStyles.style18MeduimBlack,
          ),
          verticalSpace(20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.r),
            ),
            height: 140.h,
            child: ListTile(
              leading: const Icon(
                Icons.diamond_outlined,
                color: Colors.black,
                size: 40,
              ),
              titleAlignment: ListTileTitleAlignment.top,
              title: Text('Top skills', style: AppStyles.style24Meduim),
              subtitle: Wrap(
                spacing: 8.w,
                children: [
                  Chip(
                    label: const Text('Flutter'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                  Chip(
                    label: const Text('Dart'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                  Chip(
                    label: const Text('Firebase'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                  Chip(
                    label: const Text('Git'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                  Chip(
                    label: const Text('Github'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                  Chip(
                    label: const Text('Gitlab'),
                    labelStyle: AppStyles.style16Meduim,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

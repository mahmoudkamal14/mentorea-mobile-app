import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
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
              Text('About', style: Theme.of(context).textTheme.bodyLarge),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Text(
            'As a Flutter Developer with a Bachelor’s degree in Computer Science from the College of Computers and Artificial Intelligence, Fayoum University, I specialize in creating high-quality cross-platform applications that deliver seamless and intuitive user experiences. Passionate about writing clean, efficient, and scalable code, I am committed to implementing industry best practices to build solutions that not only meet but exceed user expectations.',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          verticalSpace(20),
          ContainerCardWidget(
            height: 160.h,
            child: ListTile(
              leading: Icon(
                Icons.diamond_outlined,
                color: Theme.of(context).iconTheme.color,
                size: 40,
              ),
              titleAlignment: ListTileTitleAlignment.top,
              title: Text(
                'Top skills',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: Wrap(
                spacing: 8.w,
                children: [
                  Chip(
                    label: const Text('Flutter'),
                    backgroundColor: const Color(0xFF103A69),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  Chip(
                    label: const Text('Dart'),
                    backgroundColor: const Color(0xFF103A69),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  Chip(
                    label: const Text('Git'),
                    backgroundColor: const Color(0xFF103A69),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  Chip(
                    label: const Text('Firebase'),
                    backgroundColor: const Color(0xFF103A69),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  Chip(
                    label: const Text('Github'),
                    backgroundColor: const Color(0xFF103A69),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
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

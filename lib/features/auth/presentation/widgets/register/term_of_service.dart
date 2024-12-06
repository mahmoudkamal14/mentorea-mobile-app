import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class TermOfService extends StatefulWidget {
  const TermOfService({
    super.key,
  });

  @override
  State<TermOfService> createState() => _TermOfServiceState();
}

class _TermOfServiceState extends State<TermOfService> {
  bool agree = false;
  IconData checkBox = Icons.check_box_outline_blank_rounded;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              agree = !agree;
            });
          },
          icon: Icon(
            agree == true ? Icons.check_box_outlined : checkBox,
            size: 40,
          ),
          color: agree == true ? Colors.green : const Color(0xFF120E1A),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'By signing up,I understand and agree to ',
                style: AppStyles.style16Meduim.copyWith(
                  color: const Color(0xFF120E1A),
                ),
              ),
              verticalSpace(4),
              Text(
                'Term of Service',
                style: AppStyles.style16Meduim.copyWith(
                  color: const Color(0xFF5215B6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

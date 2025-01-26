import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';

class FieldOfStudyWidget extends StatefulWidget {
  const FieldOfStudyWidget({super.key});

  @override
  State<FieldOfStudyWidget> createState() => _FieldOfStudyWidgetState();
}

class _FieldOfStudyWidgetState extends State<FieldOfStudyWidget> {
  final List<String> listOptions = [
    'Mobile Development',
    'Web Development',
    'Artificial Intelligence',
    'Design',
  ];
  String? selectedField = 'Mobile Development';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: Colors.black),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: DropdownButton<String>(
        value: selectedField,
        onChanged: (value) {
          setState(() {
            selectedField = value!;
          });
        },
        icon: const SizedBox.shrink(),
        underline: const SizedBox.shrink(),
        items: listOptions
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(e, style: AppStyles.style16Meduim),
                  ),
                ))
            .toList(),
        selectedItemBuilder: (BuildContext context) => listOptions
            .map((e) => Center(
                  child: Text(e, style: AppStyles.style18Meduim),
                ))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'field_list_view_item.dart';

class FieldsListView extends StatefulWidget {
  const FieldsListView({super.key});

  @override
  State<FieldsListView> createState() => _FieldsListViewState();
}

class _FieldsListViewState extends State<FieldsListView> {
  @override
  Widget build(BuildContext context) {
    List<String> fields = [
      'Back-End Developer',
      'Front-End Developer',
      'Flutter Developer',
      'Android Developer',
      'IOS Developer',
      'UIUX Designer'
    ];

    int selectedIndex = 0;

    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: fields.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: FieldListViewItem(
              fields: fields,
              index: index,
              selectedIndex: selectedIndex,
            ),
          ),
        ),
      ),
    );
  }
}

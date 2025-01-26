import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/Mentee/explore/presentation/widgets/mentor_list_view.dart';
import 'package:mentorea_mobile_app/Mentee/explore/presentation/widgets/search_bar_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
    return Column(
      children: [
        const SearchBarWidget(),
        verticalSpace(20),
        SizedBox(
          height: 40.h,
          child: ListView.builder(
            itemCount: fields.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1.3.w),
                ),
                child: Center(child: Text(fields[index])),
              ),
            ),
          ),
        ),
        verticalSpace(20),
        const MentorListView(),
      ],
    );
  }
}

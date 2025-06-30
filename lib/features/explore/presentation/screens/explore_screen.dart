import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/specializations/specializations_list_view.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentors/mentor_list_view.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/search/search_bar_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBarWidget(),
        verticalSpace(20),
        const SpecializationsListView(),
        verticalSpace(20),
        const MentorListView(),
      ],
    );
  }
}

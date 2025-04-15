import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/fields_list_view.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_list_view.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/search_bar_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchBarWidget(),
        verticalSpace(20),
        const FieldsListView(),
        verticalSpace(20),
        const MentorListView(),
      ],
    );
  }
}

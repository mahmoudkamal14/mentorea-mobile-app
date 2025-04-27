import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/presentation/widgets/register/mentee_interests_list_view_item.dart';

class MenteeInterestsListView extends StatelessWidget {
  const MenteeInterestsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var fieldsList = RegisterCubit.get(context).allFieldsList;
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return SizedBox(
          height: 600,
          child: ListView.builder(
            itemCount: fieldsList.length,
            itemBuilder: (context, index) => MenteeInterestsListViewItem(
              fieldItem: fieldsList[index],
              index: index,
            ),
          ),
        );
      },
    );
  }
}

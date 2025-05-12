import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_state.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/specialization_list_view_item.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/specialization_shimmer_loading_widegt.dart';

class SpecializationsListView extends StatefulWidget {
  const SpecializationsListView({super.key});

  @override
  State<SpecializationsListView> createState() =>
      _SpecializationsListViewState();
}

class _SpecializationsListViewState extends State<SpecializationsListView> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreMentorCubit, ExploreMentorState>(
      builder: (context, state) {
        var specializationList =
            ExploreMentorCubit.get(context).specializationList;
        if (state is GetAllSpecializationsLoading) {
          return setupLoading();
        } else {
          if (specializationList.isEmpty) {
            return setupLoading();
          } else {
            return SizedBox(
              height: 40.h,
              child: ListView.builder(
                itemCount: specializationList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSpecializationIndex = index;
                      });
                      ExploreMentorCubit.get(context)
                          .getMentorsBySpecialization(
                        searchValue: ExploreMentorCubit.get(context)
                            .specializationList[index]
                            .name,
                      );
                    },
                    child: SpecializationListViewItem(
                      specializationModel: specializationList[index],
                      itemIndex: index,
                      selectedIndex: selectedSpecializationIndex,
                    ),
                  ),
                ),
              ),
            );
          }
        }
      },
    );
  }

  SizedBox setupError(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Center(
        child: Text(
          'No specializations available',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  SizedBox setupLoading() {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: const SpecializationShimmerLoadingWidegt(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/logic/explore_mentor_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/search_mentor_body_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/search_mentor_header_widget.dart';

class MentorsSearchScreen extends StatelessWidget {
  const MentorsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExploreMentorCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leading: const AppbarIcon(),
          centerTitle: true,
          title: Text(S.current.searchForYourMentor),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              children: [
                const SearchMentorHeaderWidget(),
                verticalSpace(30),
                const Expanded(child: SearchMentorBodyWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}

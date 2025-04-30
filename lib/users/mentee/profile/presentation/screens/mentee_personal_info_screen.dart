import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/profile/mentee_profile_cubit.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/logic/profile/mentee_profile_state.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_info_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_profile_image.dart';

class MenteePersonalInfoScreen extends StatelessWidget {
  const MenteePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MenteeProfileCubit>()..getMenteeProfile(),
      child: BlocBuilder<MenteeProfileCubit, MenteeProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: const AppbarIcon(),
              title: Text(S.of(context).PersonalInformation),
            ),
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () => _refreshData(),
                backgroundColor: const Color(0xFF103A69),
                color: Colors.white,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: MenteeProfileImage()),
                    SliverToBoxAdapter(child: verticalSpace(20)),
                    const SliverToBoxAdapter(child: MenteeInfoWidget()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}

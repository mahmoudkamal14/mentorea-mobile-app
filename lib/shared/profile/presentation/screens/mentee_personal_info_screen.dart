import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/shared/profile/data/model/mentee_profile_response_model.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_cubit.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/logic/profile_state.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/widgets/mentee_info_widget.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/widgets/mentee_profile_image.dart';
import 'package:mentorea_mobile_app/shared/profile/presentation/widgets/mentee_profile_shimmer_loading.dart';

class MenteePersonalInfoScreen extends StatelessWidget {
  const MenteePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MenteeProfileResponseModel? menteeProfileModel;
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getMenteeProfile(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state is GetProfileSuccessState) {
            menteeProfileModel = ProfileCubit.get(context).menteeProfile!;
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: const AppbarIcon(),
              title: Text(S.of(context).PersonalInformation),
            ),
            body: SafeArea(
              child: RefreshIndicator(
                onRefresh: () => _refreshData(context),
                backgroundColor: const Color(0xFF103A69),
                color: Colors.white,
                child: state is GetProfileSuccessState
                    ? CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                              child: MenteeProfileImage(
                                  menteeProfileModel: menteeProfileModel!)),
                          SliverToBoxAdapter(child: verticalSpace(40)),
                          SliverToBoxAdapter(
                              child: MenteeInfoWidget(
                            menteeProfileModel: menteeProfileModel!,
                          )),
                        ],
                      )
                    : const MenteeProfileShimmerLoading(),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _refreshData(context) async {
    // Simulate a network request or data refresh
    await Future.delayed(const Duration(seconds: 1));
    // Call the getMenteeProfile method to refresh the data
    ProfileCubit.get(context).getMenteeProfile();
  }
}

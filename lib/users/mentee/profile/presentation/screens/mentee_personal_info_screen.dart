import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_info_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_profile_image.dart';

class MenteePersonalInfoScreen extends StatelessWidget {
  const MenteePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          S.of(context).PersonalInformation,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => _refreshData(),
          backgroundColor: const Color(0xFF103A69),
          color: Colors.white,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: MenteeProfileImage()),
              SliverToBoxAdapter(child: verticalSpace(20)),
              const SliverToBoxAdapter(child: MenteeInfoWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}

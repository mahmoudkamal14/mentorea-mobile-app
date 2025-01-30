import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helpers/spacing.dart';
import 'package:mentorea_mobile_app/core/theme/app_styles.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_info_widget.dart';
import 'package:mentorea_mobile_app/users/mentee/profile/presentation/widgets/mentee_profile_image.dart';

class MenteePersonalInfoScreen extends StatelessWidget {
  const MenteePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF103A69),
        elevation: 0,
        leading: const AppbarIcon(),
        centerTitle: true,
        title: Text(
          S.of(context).PersonalInformation,
          style: AppStyles.style24Bold.copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const MenteeProfileImage(),
              verticalSpace(20),
              const MenteeInfoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

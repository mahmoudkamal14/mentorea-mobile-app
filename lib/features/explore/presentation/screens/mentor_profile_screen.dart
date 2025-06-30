import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/helper/functions/navigate_to.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/screens/chats_details_screen.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_profile_image.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/widgets/mentor%20profile/mentor_info_tab_bar_widget.dart';
import 'package:mentorea_mobile_app/features/schedule/presentation/logic/schedule_cubit.dart';

class MentorProfileScreen extends StatelessWidget {
  const MentorProfileScreen({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ScheduleCubit>()..getMentorAvailability(mentorId: mentor.id!),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 0,
          leading: const AppbarIcon(),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                icon: const Icon(
                  IconlyLight.chat,
                  color: Colors.white,
                ),
                splashColor: Colors.transparent,
                onPressed: () {
                  navigateTo(context,
                      screen: ChatsDetailsScreen(mentor: mentor));
                },
              );
            }),
          ],
          centerTitle: true,
          title: Text(
            'Mentor Profile',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: MentorProfileImage(mentor: mentor)),
              SliverToBoxAdapter(child: verticalSpace(20)),
              SliverToBoxAdapter(child: MentorInfoTabBarWidget(mentor: mentor)),
            ],
          ),
        ),
      ),
    );
  }
}

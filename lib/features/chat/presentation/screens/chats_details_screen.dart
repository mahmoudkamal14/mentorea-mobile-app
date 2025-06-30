import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/widgets/action_icon_appbar.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_cubit.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_state.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/chat_header_widget.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/messages_list_view.dart';
import 'package:mentorea_mobile_app/features/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/send_message_widget.dart';

class ChatsDetailsScreen extends StatelessWidget {
  const ChatsDetailsScreen({super.key, required this.mentor});

  final MentorResponseModel mentor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChatCubit>()..fetchChatMessages(receiverId: mentor.id!),
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              elevation: 0,
              leading: const AppbarIcon(),
              titleSpacing: 0,
              toolbarHeight: 80.h,
              title: ChatHeaderWidget(mentor: mentor),
              actions: [
                ActionIconAppBar(
                  image: 'assets/icons/phone-call.svg',
                  onTap: () {},
                ),
              ],
            ),
            bottomSheet: SendMessageWidget(mentor: mentor),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                child: const MessagesListView(),
              ),
            ),
          );
        },
      ),
    );
  }
}

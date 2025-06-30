import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_cubit.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/logic/chat_state.dart';
import 'package:mentorea_mobile_app/features/chat/presentation/widgets/messages_list_view_item.dart';

class MessagesListView extends StatelessWidget {
  const MessagesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        var messages = ChatCubit.get(context).messages;

        switch (state) {
          case ConnectionChatLoadingState():
            return const Center(child: CircularProgressIndicator());
          case IncomingMessageState() || FetchMessagesSuccessState():
            return ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return MessagesListViewItem(messages: messages, index: index);
              },
            );
          case EmptyListMessagesState():
            return const Center(child: Text('No messages yet'));
          case FetchMessagesErrorState():
            return const SizedBox.shrink();
          default:
            return ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return MessagesListViewItem(messages: messages, index: index);
              },
            );
        }
      },
    );
  }
}

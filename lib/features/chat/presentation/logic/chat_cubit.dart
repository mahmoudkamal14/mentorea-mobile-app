import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/chat_history_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_request_body.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/data/repository/chat_repository.dart';
import 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository repository;

  ChatCubit(this.repository) : super(ChatInitial()) {
    initChat();
  }
  static ChatCubit get(context) => BlocProvider.of(context);

  List<MessageResponseModel> messages = [];

  Future<void> initChat() async {
    emit(ConnectionChatLoadingState());

    try {
      log("Connecting to chat server...");
      await repository.connect();
      emit(ConnectionChatSuccessState());
    } catch (e) {
      emit(ConnectionChatErrorState("Connection Failed : ${e.toString()}"));
    }
  }

  Future<void> fetchChatMessages({
    required String receiverId,
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    emit(FetchMessagesLoadingState());

    final response = await repository.getChatMessages(
      receiverId,
      pageNumber,
      pageSize,
    );

    if (response is Success<ChatHistoryResponseModel>) {
      messages = response.data.items;
      emit(messages.isEmpty
          ? EmptyListMessagesState()
          : FetchMessagesSuccessState(List.from(messages)));
    } else if (response is Failure<void>) {
      emit(FetchMessagesErrorState(response.toString()));
    }
  }

  Future<void> handleIncomingMessage() async {
    await repository.receiveMessage(
      (message) {
        messages.add(message);
        log("Received message: ${message.content}");
      },
    );
  }

  Future<void> sendMessage(MessageRequestBody message) async {
    emit(SendMessageLoadingState());
    try {
      await repository.sendMessage(message);
      log("Messages length: ${messages.length}");
      handleIncomingMessage();
      log("Messages length: ${messages.length}");
      emit(IncomingMessageState());
    } catch (e) {
      emit(SendMessageErrorState(e.toString()));
    }
  }

  Future<void> disconnect() async {
    await repository.disconnect();
    emit(DisconnectedChatState());
  }
}

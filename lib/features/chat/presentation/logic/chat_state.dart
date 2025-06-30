import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

// State for handling connection to the chat server
class ConnectionChatLoadingState extends ChatState {}

class ConnectionChatSuccessState extends ChatState {}

class ConnectionChatErrorState extends ChatState {
  final String message;
  ConnectionChatErrorState(this.message);
}

// State for Disconnected chat
final class DisconnectedChatState extends ChatState {}

// State for handling incoming messages
final class IncomingMessageState extends ChatState {}

// State for sending messages
final class SendMessageLoadingState extends ChatState {}

final class SendMessageSuccessState extends ChatState {}

final class SendMessageErrorState extends ChatState {
  final String message;
  SendMessageErrorState(this.message);
}

// State for fetching messages
final class FetchMessagesLoadingState extends ChatState {}

final class FetchMessagesSuccessState extends ChatState {
  final List<MessageResponseModel> messages;
  FetchMessagesSuccessState(this.messages);
}

final class EmptyListMessagesState extends ChatState {}

final class FetchMessagesErrorState extends ChatState {
  final String message;
  FetchMessagesErrorState(this.message);
}

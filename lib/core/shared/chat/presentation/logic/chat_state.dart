import 'package:mentorea_mobile_app/core/shared/chat/data/models/message_model.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatMessageReceived extends ChatState {
  final MessageModel message;

  ChatMessageReceived(this.message);
}

class ChatMessageSent extends ChatState {}

class ChatError extends ChatState {
  final String error;

  ChatError(this.error);
}

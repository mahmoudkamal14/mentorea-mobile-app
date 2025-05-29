import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/shared/chat/data/models/message_model.dart';
import 'package:mentorea_mobile_app/core/shared/chat/data/repository/chat_repository.dart';
import 'package:mentorea_mobile_app/core/shared/chat/presentation/logic/chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final ChatRepository repository;

  ChatCubit(this.repository) : super(ChatInitial());

  void connect() async {
    await repository.connect();
    repository.listenToMessages().listen((message) {
      emit(ChatMessageReceived(message));
    });
  }

  void sendMessage(MessageModel message) async {
    try {
      await repository.sendMessage(message);
      emit(ChatMessageSent());
    } catch (error) {
      emit(ChatError(error.toString()));
    }
  }
}

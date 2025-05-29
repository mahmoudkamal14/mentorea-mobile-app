import 'dart:async';

import 'package:mentorea_mobile_app/core/shared/chat/data/datasource/chat_signal_data_source.dart';
import 'package:mentorea_mobile_app/core/shared/chat/data/models/message_model.dart';

class ChatRepository {
  final ChatSignalRDataSource dataSource;

  ChatRepository(this.dataSource);

  Future<void> connect() => dataSource.startConnection();

  Stream<MessageModel> listenToMessages() {
    final controller = StreamController<MessageModel>();
    dataSource.listenToMessages((message) {
      controller.add(message);
    });
    return controller.stream;
  }

  Future<void> sendMessage(MessageModel message) =>
      dataSource.sendMessage(message);
}

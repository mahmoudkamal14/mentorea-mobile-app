import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper_keys.dart';
import 'package:mentorea_mobile_app/core/networking/api_error_handler.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/features/chat/data/datasource/chat_data_source.dart';
import 'package:mentorea_mobile_app/features/chat/data/datasource/chat_web_socket_data_source.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/chat_history_response_model.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_request_body.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';

class ChatRepository {
  final ChatWebSocketDataSource _webSocketDataSource;
  final ChatDataSource _chatDataSource;

  ChatRepository(this._webSocketDataSource, this._chatDataSource);

  Future<void> connect() async {
    final userId =
        await CacheHelper.getSecuredData(key: CacheHelperKeys.userId);
    await _webSocketDataSource.init(userId: userId!);
  }

  Future<void> receiveMessage(
      Function(MessageResponseModel) onMessageReceived) async {
    _webSocketDataSource.setOnMessageReceivedHandler(onMessageReceived);
  }

  Future<void> disconnect() async => await _webSocketDataSource.disconnect();

  Future<void> sendMessage(MessageRequestBody message) async =>
      await _webSocketDataSource.sendMessage(message);

  bool get isConnected => _webSocketDataSource.isConnected;

  Future<ApiResult<ChatHistoryResponseModel>> getChatMessages(
    String receiverId,
    int pageNumber,
    int pageSize,
  ) async {
    try {
      final result = await _chatDataSource.getChatHistory(
        receiverId,
        pageNumber,
        pageSize,
      );

      return ApiResult.success(result);
    } on Exception catch (e) {
      return ApiResult.failure(ApiErrorHandler.handleError(e).message);
    }
  }
}

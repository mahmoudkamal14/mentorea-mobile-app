import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/features/chat/data/models/chat_history_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'chat_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ChatDataSource {
  factory ChatDataSource(Dio dio, {String? baseUrl}) = _ChatDataSource;

  @GET(ApiConstants.getChatHistory)
  Future<ChatHistoryResponseModel> getChatHistory(
    @Path("receiverId") String receiverId,
    @Query("pageNumber") int pageNumber,
    @Query("pageSize") int pageSize,
  );

  @DELETE(ApiConstants.deleteChat)
  Future<void> deleteChat(
    @Path("receiverId") String receiverId,
  );

  @DELETE(ApiConstants.deleteMessage)
  Future<void> deleteMessage(
    @Path("MessageId") String messageId,
  );

  @POST(ApiConstants.uploadMessageFile)
  Future<String> uploadMessageFile(
    @Body() FormData formData,
  );
}

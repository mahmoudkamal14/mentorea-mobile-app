import 'package:mentorea_mobile_app/features/chat/data/models/message_response_model.dart';

class ChatHistoryResponseModel {
  ChatHistoryResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<MessageResponseModel> items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory ChatHistoryResponseModel.fromJson(Map<String, dynamic> json) {
    return ChatHistoryResponseModel(
      items: json["items"] == null
          ? []
          : List<MessageResponseModel>.from(
              json["items"]!.map((x) => MessageResponseModel.fromJson(x))),
      pageNumber: json["pageNumber"],
      totalPages: json["totalPages"],
      hasPreviousPage: json["hasPreviousPage"],
      hasNextPage: json["hasNextPage"],
    );
  }
}

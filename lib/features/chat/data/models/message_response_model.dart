class MessageResponseModel {
  final String id;
  final String senderId;
  final String receiverId;
  final String content;
  final String type;
  final String createdAt;

  MessageResponseModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.content,
    required this.type,
    required this.createdAt,
  });

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) {
    return MessageResponseModel(
      id: json['id'],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      content: json['content'],
      type: json['type'],
      createdAt: json['createdAt'],
    );
  }
}

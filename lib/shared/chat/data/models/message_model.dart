class MessageModel {
  final String senderId;
  final String receiverId;
  final String content;
  final DateTime sentAt;

  MessageModel({
    required this.senderId,
    required this.receiverId,
    required this.content,
    required this.sentAt,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      content: json['content'],
      sentAt: DateTime.parse(json['sentAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'content': content,
      'sentAt': sentAt.toIso8601String(),
    };
  }
}

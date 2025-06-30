class MessageRequestBody {
  final String type;
  final String receiverId;
  final String content;

  MessageRequestBody({
    required this.type,
    required this.receiverId,
    required this.content,
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'receiverId': receiverId,
      'content': content,
    };
  }
}

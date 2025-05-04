class ToggleLikeRequestBody {
  ToggleLikeRequestBody({
    required this.userId,
  });

  final String? userId;

  factory ToggleLikeRequestBody.fromJson(Map<String, dynamic> json) {
    return ToggleLikeRequestBody(
      userId: json["userId"],
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
      };
}

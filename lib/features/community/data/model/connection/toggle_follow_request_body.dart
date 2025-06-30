class ToggleFollowRequestBody {
  ToggleFollowRequestBody({
    required this.userId,
  });

  final String? userId;

  Map<String, dynamic> toJson() => {
        "userId": userId,
      };
}

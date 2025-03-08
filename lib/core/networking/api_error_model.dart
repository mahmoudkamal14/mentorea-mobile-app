class ApiErrorModel {
  final String message;
  final int? statusCode;
  final String? errorCode;

  ApiErrorModel({
    required this.message,
    this.statusCode,
    this.errorCode,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      message: json['message'] ?? 'An unknown error occurred.',
      statusCode: json['statusCode'],
      errorCode: json['errorCode'],
    );
  }
}

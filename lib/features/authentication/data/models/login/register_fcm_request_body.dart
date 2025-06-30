import 'package:json_annotation/json_annotation.dart';

part 'register_fcm_request_body.g.dart';

@JsonSerializable()
class RegisterFcmRequestBody {
  RegisterFcmRequestBody({required this.userId, required this.deviceToken});

  final String? userId;

  final String? deviceToken;

  factory RegisterFcmRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterFcmRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterFcmRequestBodyToJson(this);
}

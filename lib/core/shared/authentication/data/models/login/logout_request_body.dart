import 'package:json_annotation/json_annotation.dart';

part 'logout_request_body.g.dart';

@JsonSerializable()
class LogoutRequestBody {
  LogoutRequestBody({
    required this.refreshToken,
    required this.token,
  });

  final String refreshToken;
  final String token;

  Map<String, dynamic> toJson() => _$LogoutRequestBodyToJson(this);
}

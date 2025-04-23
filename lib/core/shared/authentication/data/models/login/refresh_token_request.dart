import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshTokenRequest {
  RefreshTokenRequest({
    required this.refreshToken,
    required this.token,
  });

  final String? refreshToken;
  final String? token;

  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}

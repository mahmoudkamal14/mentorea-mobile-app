import 'package:json_annotation/json_annotation.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel {
  AuthResponseModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.accessToken,
    required this.refreshToken,
  });

  @JsonKey(name: 'FirstName')
  final String? firstName;

  @JsonKey(name: 'LastName')
  final String? lastName;

  @JsonKey(name: 'Email')
  final String? email;

  @JsonKey(name: 'AccessToken')
  final String? accessToken;

  @JsonKey(name: 'RefreshToken')
  final String? refreshToken;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

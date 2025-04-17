import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable(createToJson: false)
class LoginResponseModel {
  LoginResponseModel({
    required this.id,
    required this.email,
    required this.name,
    required this.token,
    required this.expiresIn,
    required this.refreshToken,
    required this.refreshTokenExpiration,
  });

  final String? id;
  final String? email;
  final String? name;
  final String? token;
  final int? expiresIn;
  final String? refreshToken;
  final DateTime? refreshTokenExpiration;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

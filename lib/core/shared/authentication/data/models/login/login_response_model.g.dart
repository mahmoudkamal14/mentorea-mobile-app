// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      token: json['token'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiration: json['refreshTokenExpiration'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpiration'] as String),
    );

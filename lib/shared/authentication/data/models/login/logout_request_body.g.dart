// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutRequestBody _$LogoutRequestBodyFromJson(Map<String, dynamic> json) =>
    LogoutRequestBody(
      refreshToken: json['refreshToken'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LogoutRequestBodyToJson(LogoutRequestBody instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'token': instance.token,
    };

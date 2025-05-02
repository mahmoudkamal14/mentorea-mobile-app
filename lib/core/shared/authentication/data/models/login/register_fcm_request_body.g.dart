// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_fcm_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterFcmRequestBody _$RegisterFcmRequestBodyFromJson(
        Map<String, dynamic> json) =>
    RegisterFcmRequestBody(
      userId: json['userId'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$RegisterFcmRequestBodyToJson(
        RegisterFcmRequestBody instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'deviceToken': instance.deviceToken,
    };

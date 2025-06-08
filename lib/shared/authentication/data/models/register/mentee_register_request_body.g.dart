// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentee_register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenteeRegisterRequestBody _$MenteeRegisterRequestBodyFromJson(
        Map<String, dynamic> json) =>
    MenteeRegisterRequestBody(
      email: json['Email'] as String,
      password: json['Password'] as String,
      name: json['Name'] as String,
      location: json['Location'] as String,
      gender: json['Gender'] as String,
      pirthDateYear: (json['PirthDate.Year'] as num).toInt(),
      pirthDateMonth: (json['PirthDate.Month'] as num).toInt(),
      pirthDateDay: (json['PirthDate.Day'] as num).toInt(),
      about: json['About'] as String,
    );

Map<String, dynamic> _$MenteeRegisterRequestBodyToJson(
        MenteeRegisterRequestBody instance) =>
    <String, dynamic>{
      'Email': instance.email,
      'Password': instance.password,
      'Name': instance.name,
      'Location': instance.location,
      'Gender': instance.gender,
      'PirthDate.Year': instance.pirthDateYear,
      'PirthDate.Month': instance.pirthDateMonth,
      'PirthDate.Day': instance.pirthDateDay,
      'About': instance.about,
    };
